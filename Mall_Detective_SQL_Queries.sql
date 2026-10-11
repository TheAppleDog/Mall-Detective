
SELECT * FROM transactions LIMIT 10;

---Query 1 — KPI 
SELECT
    COUNT(*) AS transaction_count,

    SUM(CAST(
        REPLACE(REPLACE(REPLACE(TRIM(net_sales_inr), '₹', ''), ',', ''), ' ', '')
        AS REAL
    )) AS total_net_sales,

    AVG(CAST(
        REPLACE(REPLACE(REPLACE(TRIM(net_sales_inr), '₹', ''), ',', ''), ' ', '')
        AS REAL
    )) AS average_basket,

    SUM(items_count) AS items_sold,

    AVG(CAST(
        REPLACE(TRIM(discount_pct), '%', '')
        AS REAL
    )) AS average_discount_pct

FROM transactions;

---Query 2 — Sales by mall zone
SELECT
    t.zone,
    SUM(
        CAST(
            REPLACE(REPLACE(REPLACE(TRIM(tr.net_sales_inr), '₹', ''), ',', ''), ' ', '')
            AS REAL
        )
    ) AS net_sales,
    COUNT(*) AS transaction_count,
    AVG(
        CAST(
            REPLACE(REPLACE(REPLACE(TRIM(tr.net_sales_inr), '₹', ''), ',', ''), ' ', '')
            AS REAL
        )
    ) AS average_basket
FROM transactions AS tr
JOIN tenants AS t
    ON tr.tenant_id = t.tenant_id
GROUP BY t.zone
ORDER BY net_sales DESC;

---Query 3 — Sales by product category
SELECT
    t.category,
    SUM(
        CAST(
            REPLACE(REPLACE(REPLACE(TRIM(tr.net_sales_inr), '₹', ''), ',', ''), ' ', '')
            AS REAL
        )
    ) AS net_sales,
    AVG(
        CAST(
            REPLACE(REPLACE(REPLACE(TRIM(tr.net_sales_inr), '₹', ''), ',', ''), ' ', '')
            AS REAL
        )
    ) AS average_basket,
    COUNT(*) AS transactions
FROM transactions AS tr
JOIN tenants AS t
    ON tr.tenant_id = t.tenant_id
GROUP BY t.category
ORDER BY net_sales DESC;

---Query 4 — Payment method analysis
SELECT
    payment_method,
    COUNT(*) AS transactions,
    SUM(
        CAST(
            REPLACE(REPLACE(REPLACE(TRIM(net_sales_inr), '₹', ''), ',', ''), ' ', '')
            AS REAL
        )
    ) AS net_sales,
    AVG(
        CAST(
            REPLACE(REPLACE(REPLACE(TRIM(net_sales_inr), '₹', ''), ',', ''), ' ', '')
            AS REAL
        )
    ) AS average_basket
FROM transactions
GROUP BY payment_method
ORDER BY transactions DESC;

---Query 5 — Footfall by entrance
SELECT
    entrance,
    SUM(CAST(visitors AS INTEGER)) AS total_visitors,
    AVG(CAST(visitors AS REAL)) AS avg_visitors_per_record
FROM footfall
GROUP BY entrance
ORDER BY total_visitors DESC;

---Query 6 — Discount analysis
SELECT
    CASE
        WHEN CAST(REPLACE(TRIM(discount_pct), '%', '') AS REAL) < 10
            THEN 'Below 10%'
        WHEN CAST(REPLACE(TRIM(discount_pct), '%', '') AS REAL) < 20
            THEN '10% to below 20%'
        ELSE '20% and above'
    END AS discount_band,

    COUNT(*) AS transaction_count,

    SUM(
        CAST(
            REPLACE(REPLACE(REPLACE(TRIM(net_sales_inr), '₹', ''), ',', ''), ' ', '')
            AS REAL
        )
    ) AS net_sales,

    AVG(
        CAST(REPLACE(TRIM(discount_pct), '%', '') AS REAL)
    ) AS average_discount

FROM transactions
GROUP BY discount_band
ORDER BY average_discount;