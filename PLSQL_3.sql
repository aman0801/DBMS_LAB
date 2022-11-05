-- 3. Create a PLSql block that declares a cursor. Pass building as a parameter and increase the capacity by
-- 20%.
DECLARE
    CURSOR room_cur(building IN VARCHAR2) IS
        SELECT roomid, building, capacity
        FROM location
        WHERE building = building;
    room_rec room_cur%ROWTYPE;
BEGIN
    OPEN room_cur('A');
    LOOP
        FETCH room_cur INTO room_rec;
        EXIT WHEN room_cur%NOTFOUND;
        UPDATE location
        SET capacity = room_rec.capacity + 20
        WHERE roomid = room_rec.roomid;
    END LOOP;
    CLOSE room_cur;
END;
/