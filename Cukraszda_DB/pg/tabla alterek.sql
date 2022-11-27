
--
-- SQLINES DEMO *** `ar`
--
ALTER TABLE ar
  ADD PRIMARY KEY (id),
  ADD KEY sutiid (sutiid);

--
-- SQLINES DEMO *** `felhasznalo`
--
ALTER TABLE felhasznalo
  ADD PRIMARY KEY (id);

--
-- SQLINES DEMO *** `roles`
--
ALTER TABLE roles
  ADD PRIMARY KEY (id);

--
-- SQLINES DEMO *** `suti`
--
ALTER TABLE suti
  ADD PRIMARY KEY (id),
  ADD KEY FK41s73emghxw9fcxwx3bybh8q5 (sutiid);

--
-- SQLINES DEMO *** `tartalom`
--
ALTER TABLE tartalom
  ADD PRIMARY KEY (id),
  ADD KEY sutiid (sutiid);

--
-- SQLINES DEMO *** `user_role`
--
ALTER TABLE user_role
  ADD INDEX "user_id" (user_id),
  ADD KEY role_id (role_id);

--
-- SQLINES DEMO *** `uzenetek`
--
ALTER TABLE uzenetek
  ADD PRIMARY KEY (id);

--
-- SQLINES DEMO ***  AUTO_INCREMENT értéke
--

--
-- SQLINES DEMO *** táblához `felhasznalo`
--
ALTER TABLE felhasznalo
  alter column id set NOT NULL type AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- SQLINES DEMO *** táblához `uzenetek`
--
ALTER TABLE uzenetek
  ALTER COLUMN id cast(10 as int) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- SQLINES DEMO *** írt táblákhoz
--

--
-- SQLINES DEMO *** �blához `ar`
--
ALTER TABLE ar
  ADD CONSTRAINT ar_ibfk_1 FOREIGN KEY (sutiid) REFERENCES suti (id);

--
-- SQLINES DEMO *** �blához `suti`
--
ALTER TABLE suti
  ADD CONSTRAINT FK41s73emghxw9fcxwx3bybh8q5 FOREIGN KEY (sutiid) REFERENCES ar (id);

--
-- SQLINES DEMO *** �blához `tartalom`
--
ALTER TABLE tartalom
  ADD CONSTRAINT tartalom_ibfk_1 FOREIGN KEY (sutiid) REFERENCES suti (id);

--
-- SQLINES DEMO *** �blához `user_role`
--
ALTER TABLE user_role
  ADD CONSTRAINT user_role_ibfk_1 FOREIGN KEY (user_id) REFERENCES felhasznalo (id),
  ADD CONSTRAINT user_role_ibfk_2 FOREIGN KEY (role_id) REFERENCES roles (id);
COMMIT;

/* SQLINES DEMO *** ER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/* SQLINES DEMO *** ER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/* SQLINES DEMO *** ON_CONNECTION=@OLD_COLLATION_CONNECTION */;
