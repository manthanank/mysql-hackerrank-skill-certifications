SELECT sku, product_name FROM PRODUCT p LEFT OUTER JOIN INVOICE_ITEM i ON p.id = i.product_id WHERE i.invoice_id is NULL
