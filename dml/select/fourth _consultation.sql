/*Payments made with Pix or card*/
SELECT * FROM pagamento
WHERE metodo_pagamento IN ('Pix','Cartão')