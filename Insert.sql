ALTER SESSION SET CONSTRAINTS = DEFERRED;

execute insert_active_status_p('Received');
execute insert_active_status_p('Delegated');

INSERT INTO archived_ticket_status VALUES ('Solved');
INSERT INTO archived_ticket_status VALUES ('Dropped');

INSERT INTO ENVIRONMENT VALUES ('Windows 10');
INSERT INTO ENVIRONMENT VALUES ('Windows 7');
INSERT INTO ENVIRONMENT VALUES ('Ubuntu 20.04');

INSERT INTO ISSUE_TYPE VALUES ('Crashes');
INSERT INTO ISSUE_TYPE VALUES ('Logging in');

INSERT INTO POSITION VALUES ('Team Leader');

INSERT INTO TEAM VALUES ('Networking');

INSERT INTO PRIORITY VALUES ('Low');
INSERT INTO PRIORITY VALUES ('Normal');
INSERT INTO PRIORITY VALUES ('Urgent');
INSERT INTO PRIORITY VALUES ('Critical');

INSERT INTO SOFTWARE VALUES ('Helpdesk');

INSERT INTO CLIENTS(FIRST_NAME, LAST_NAME, EMAIL, PASSWORD) VALUES ('Tomasz', 'Nowak', 'TNowak@wp.pl', '12345678');
INSERT INTO CLIENTS(FIRST_NAME, LAST_NAME, EMAIL, PASSWORD) VALUES ('Artur', 'Janiak', 'AJaniak@wp.pl', 'asdfghjk');

INSERT INTO EMPLOYEES(FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, POSITION, TEAM) VALUES ('Robert', 'Kowalski', 'RKowalski@wp.pl', 'qwertyui', 'Team Leader', 'Networking');

execute insert_raw_ticket_p('Trouble', 'Normal', 'Helpdesk', 'Crashes', 'Windows 10', 1);

execute receive_ticket_p(2, 1);