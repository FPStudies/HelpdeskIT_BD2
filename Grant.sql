BEGIN
    FOR a IN (
        SELECT owner, table_name 
        FROM all_tables 
        WHERE owner = 'FPRZYBYS'
    )
    LOOP
        EXECUTE IMMEDIATE 
            'GRANT ALL ON '||a.owner||'.'||a.table_name||' to ' || 'mkordow1';
    END LOOP;



    FOR b IN (
        SELECT owner, view_name 
        FROM all_views 
        WHERE owner = 'FPRZYBYS'
    )
    LOOP
        EXECUTE IMMEDIATE 
            'GRANT ALL ON '||b.owner||'.'||b.view_name||' to ' || 'mkordow1';
    END LOOP;



    FOR c IN (
        SELECT sequence_owner, sequence_name 
        FROM all_sequences
        WHERE sequence_owner = 'FPRZYBYS'
    )
    LOOP
        EXECUTE IMMEDIATE 
            'GRANT ALL ON '||c.sequence_owner||'.'||c.sequence_name||' to ' || 'mkordow1';
    END LOOP;

    FOR d IN (
        SELECT owner, name 
        FROM all_snapshots
        WHERE owner = 'FPRZYBYS'
    )
    LOOP
        EXECUTE IMMEDIATE 
            'GRANT ALL ON '||d.owner||'.'||d.name||' to ' || 'mkordow1';
    END LOOP;

    FOR e IN (
        SELECT owner, object_name 
        FROM all_procedures
        WHERE owner = 'FPRZYBYS' AND (object_name LIKE '%__P' OR object_name LIKE '%__F')
    )
    LOOP
        EXECUTE IMMEDIATE 
            'GRANT EXECUTE ON '||e.owner||'.'||e.object_name||' to ' || 'mkordow1';
    END LOOP;

END;

