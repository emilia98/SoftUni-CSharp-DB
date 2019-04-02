/* Execute only once */
CREATE SEQUENCE seq_Invoice_Num AS INT START WITH 1 INCREMENT BY 1;

SELECT NEXT VALUE FOR seq_Invoice_Num;