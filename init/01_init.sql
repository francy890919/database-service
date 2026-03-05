CREATE TABLE IF NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS orders (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(id),
    quantity INTEGER NOT NULL,
    status VARCHAR(50) DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (name, price) VALUES
    ('Laptop', 999.00),
    ('Mouse', 29.00);
```

---

### Step 3：每個 repo 的 `.gitignore`
```
__pycache__/
*.pyc
*.pyo
.env
.venv/
venv/
*.egg-info/
dist/
.pytest_cache/
.DS_Store