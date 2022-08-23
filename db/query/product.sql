-- name: CreateProduct :one
INSERT INTO products (
id,
name,
price
) VALUES (
    $1, $2, $3
) RETURNING *;

-- name: GetProduct :one
SELECT * FROM products
WHERE id = $1 LIMIT 1;

--name: GetProducts :many
SELECT * FROM products;

--name: UpdateProducts :one
UPDATE products
SET name = $1, price = $3
WHERE id = $1 RETURNING *;

--name: DeleteProduct :one
DELETE FROM products
WHERE id = $1;