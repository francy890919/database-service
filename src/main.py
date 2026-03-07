import os

DB_HOST = os.getenv("DB_HOST", "localhost")
DB_PORT = os.getenv("DB_PORT", "5432")
DB_NAME = os.getenv("DB_NAME", "devops_db")
DB_USER = os.getenv("DB_USER", "postgres")
DB_PASS = os.getenv("DB_PASS", "postgres")

def health_check():
    print(f"Database config: {DB_HOST}:{DB_PORT}/{DB_NAME}")
    return True

if __name__ == "__main__":
    health_check()
