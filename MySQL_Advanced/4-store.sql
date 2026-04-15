-- Sets up a trigger that subtracts the ordered amount from an item's stock once an order is inserted
-- The items table allows the quantity column to drop below zero
CREATE TRIGGER decrease_quantity_after_order
AFTER INSERT ON orders
FOR EACH ROW
UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
