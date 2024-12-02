from flask import Flask, request, jsonify
import psycopg2
from psycopg2 import sql
from datetime import datetime

app = Flask(__name__)

# Configuración de la base de datos
DB_CONFIG = {
    'host': 'localhost',
    'database': 'userFeedback',
    'user': 'gpt',
    'password': 'feedbackPostgres'
}

# Función para conectar a la base de datos
def get_db_connection():
    conn = psycopg2.connect(
        host=DB_CONFIG['host'],
        database=DB_CONFIG['database'],
        user=DB_CONFIG['user'],
        password=DB_CONFIG['password']
    )
    return conn

def insertIntoCategory(table,category_list,timestamp):
    # Conectar a la base de datos
    conn = get_db_connection()
    cursor = conn.cursor()
    # Insertar el feedback en la tabla "{positive/negative}_feedback_category"
    insert_query = ""
    if table == "n_feedback_category":
        insert_query = sql.SQL("""
            INSERT INTO n_feedback_category (category, timestamp)
            VALUES (%s, %s)
            """)
    else:
        insert_query = sql.SQL("""
            INSERT INTO p_feedback_category (category, timestamp)
            VALUES (%s, %s)
            """)        

    for category in category_list:    
        cursor.execute(insert_query, (category, timestamp))
        # Confirmar la transacción
        conn.commit()

    # Cerrar la conexión
    cursor.close()
    conn.close()
    return 0

def insertIntoValuations(valuation, positive, negative, timestamp):
    # Conectar a la base de datos
    conn = get_db_connection()
    cursor = conn.cursor()
    # Insertar el feedback en la tabla "valuations"
    insert_query = sql.SQL("""
        INSERT INTO valuations (valuation, positive, negative, timestamp)
        VALUES (%s, %s, %s, %s)
    """)
    cursor.execute(insert_query, (valuation, positive, negative, timestamp))
    # Confirmar la transacción
    conn.commit()
    # Cerrar la conexión
    cursor.close()
    conn.close()
    return 0
    

# Ruta para recibir el feedback
@app.route('/feedback', methods=['POST'])
def receive_feedback():
    try:
        data = request.get_json()

        if 'valuacion' not in data or 'a_favor' not in data or 'en_contra' not in data or 'a_favor_category' not in data or 'en_contra_category' not in data:
            return jsonify({'error': 'Faltan campos requeridos'}), 400

        valuacion = data['valuacion']
        a_favor = data['a_favor']
        en_contra = data['en_contra']
        a_favor_category = data['a_favor_category']
        en_contra_category = data['en_contra_category']

        if valuacion < 1 or valuacion > 4:
            return jsonify({'error': 'La valoración debe ser un número entre 1 y 4'}), 400

        if not isinstance(a_favor, str):
            return jsonify({'error': 'a_favor debe ser un string'}), 400
        
        if not isinstance(en_contra, str):
            return jsonify({'error': 'en_contra debe ser un string'}), 400

        if not isinstance(a_favor_category, str):
            return jsonify({'error': 'en_contra debe ser un string'}), 400

        if not isinstance(en_contra_category, str):
            return jsonify({'error': 'en_contra debe ser un string'}), 400

        a_favor_list = [item.strip() for item in a_favor.split(',')]
        en_contra_list = [item.strip() for item in en_contra.split(',')]
        a_favor_category_list = [item.strip() for item in a_favor_category.split(',')]
        en_contra_category_list = [item.strip() for item in en_contra_category.split(',')]

        positive_text = " | ".join(a_favor_list)
        negative_text = " | ".join(en_contra_list)

        timestamp = datetime.now()

        insertIntoValuations(valuacion,positive_text, negative_text, timestamp)
        insertIntoCategory("p_feedback_category", a_favor_category_list,timestamp)
        insertIntoCategory("n_feedback_category", en_contra_category_list,timestamp)

        return jsonify({'message': 'Feedback recibido exitosamente y guardado en la base de datos'}), 200

    except Exception as e:
        return jsonify({'error': str(e)}), 500


if __name__ == '__main__':
    app.run(debug=True)