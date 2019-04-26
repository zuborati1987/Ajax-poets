/*
    Database initialization script that runs on every web-application redeployment.
*/
DROP TABLE IF EXISTS poems;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    CONSTRAINT name_not_empty CHECK (name <> ''),
	CONSTRAINT email_not_empty CHECK (email <> ''),
	CONSTRAINT password_not_empty CHECK (password <> '')
);


CREATE TABLE poems (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT title_not_empty CHECK (title <> ''),
    CONSTRAINT body_not_empty CHECK (body <> '')
);



INSERT INTO users (name, email, password) VALUES
	('Lord Byron', 'lord@byron', 'bb'), -- 1
	('Percy Shelley', 'percy@shelley', 'ss'), -- 2
	('William Wordsworth', 'william@wordsworth', 'ww'), -- 3
	('Zubor Attila', 'attilazubor@gmail.com', 'zz'); -- 4


INSERT INTO poems (title, body, user_id) VALUES
	('She Walks in Beauty', 'She walks in beauty, like the night
Of cloudless climes and starry skies;
And all that’s best of dark and bright
Meet in her aspect and her eyes;
Thus mellowed to that tender light
Which heaven to gaudy day denies.

One shade the more, one ray the less,
Had half impaired the nameless grace
Which waves in every raven tress,
Or softly lightens o’er her face;
Where thoughts serenely sweet express,
How pure, how dear their dwelling-place.

And on that cheek, and o’er that brow,
So soft, so calm, yet eloquent,
The smiles that win, the tints that glow,
But tell of days in goodness spent,
A mind at peace with all below,
A heart whose love is innocent!', 1),           -- 1
	('Ozymandias', 'I met a traveller from an antique land
Who said: Two vast and trunkless legs of stone
Stand in the desert... near them, on the sand,
Half sunk, a shattered visage lies, whose frown,
And wrinkled lip, and sneer of cold command,
Tell that its sculptor well those passions read
Which yet survive, stamped on these lifeless things,
The hand that mocked them and the heart that fed;

And on the pedestal these words appear:
''My name is Ozymandias, king of kings;
Look on my works, ye Mighty, and despair!''
Nothing beside remains. Round the decay
Of that colossal wreck, boundless and bare
The lone and level sands stretch far away.', 2),           -- 2
	('I Wandered Lonely as a Cloud', 'I wandered lonely as a cloud
That floats on high o''er vales and hills,
When all at once I saw a crowd,
A host, of golden daffodils;
Beside the lake, beneath the trees,
Fluttering and dancing in the breeze.

Continuous as the stars that shine
And twinkle on the milky way,
They stretched in never-ending line
Along the margin of a bay:
Ten thousand saw I at a glance,
Tossing their heads in sprightly dance.

The waves beside them danced; but they
Out-did the sparkling waves in glee:
A poet could not but be gay,
In such a jocund company:
I gazed—and gazed—but little thought
What wealth the show to me had brought:

For oft, when on my couch I lie
In vacant or in pensive mood,
They flash upon that inward eye
Which is the bliss of solitude;
And then my heart with pleasure fills,
And dances with the daffodils.', 3),           -- 3
	('When We Two Parted', 'When we two parted
In silence and tears,
Half broken-hearted
To sever for years,
Pale grew thy cheek and cold,
Colder thy kiss;
Truly that hour foretold
Sorrow to this.

The dew of the morning
Sank chill on my brow–
It felt like the warning
Of what I feel now.
Thy vows are all broken,
And light is thy fame;
I hear thy name spoken,
And share in its shame.

They name thee before me,
A knell in mine ear;
A shudder come o’er me–
Why wert thou so dear?
They know not I knew thee,
Who knew thee too well–
Long, long shall I rue thee,
Too deeply to tell.

In secret we met–
In silence I grieve,
That thy heart could forget,
Thy spirit deceive.
If I should meet thee
After long years,
How should I greet thee?–
With silence and tears.', 1),   -- 4
('if __name__==__main__', 'Programot csinálsz,
Hogy csináljon neked programot.
Program programot programoz.
A lényeg, hogy jó legyen.', 4),
('Kardot ragadj!', 'Mikor lángokban a világ:
Kardot ragadj!
Mikor a sok hullám összecsap:
Kardot ragadj!
Mikor küzdesz a holnapért:
Kardot ragadj!
Mikor harcolsz a máért:
Kardot ragadj!
Ha kiállsz másokért:
Kardot ragadj!
Ha kiállsz magadért:
Kardot ragadj!
Ha a győzelem csábít:
Kardot ragadj!
Ha a vereség lázít:
Kardot ragadj!
És ha könnyen megy minden:
Kardot ragadj!
Mert inkább halj kard által,
mint élj halottként!', 4),
('Egy csapat majom ordibál az erdőben', 'Egy csapat majom ordibál az erdőben.
Mindegy, csak jó hangos legyen. Csak nehogy csend legyen, a csend az félelmetes.
Adjatok nekünk könnyen fogyasztható tömegmédiát, de minden pillanatban történjen valami, nehogy legyen időnk egyedül maradni a fejünkben. De azért könnyű legyen.
Nehogy gondolkodni, dolgozni, izzadni vagy vérezni kelljen.
Hagy legyünk olyanok, mint valami tengeri szivacs.
A főhős győzze le a főgonoszt a filmeken, a játékokban mondjátok meg, hogy hova menjünk és merre lőjünk, a könyvekben pedig … őőő … könyveket inkább nem kérünk.
Kiabáld csak el mindenkinek a történeted, az érzelmeid, a véleményed, a gondjaid.
Ameddig legalább egy ember elhiszi addig nem vagy őrült, és te is elhiheted. Aztán mondogathatod magadnak szépen.
Te kibaszott tengeri szivacs.
Mondd el, hogy úgy hozta a sors, hogy nincs pénzem, népszerűségem, szerelmem, bátorságom, kitartásom, tehetségem.
Aztán dögölj meg.
Már úgyis halott vagy, csak elütöd az időt ameddig bejelentik.
Csak nehogy ki kelljen menni a házadtól két méterre, ahol kevesebb van két fokkal mint 22, és lehet hogy két óráig üres gyomorral kéne lenni.
Jó neked itt a kényelemben, nem kell neked Dali meg Dosztojevszkij, jó lesz az X-men meg az X-men 2 meg az X-men 6, köszönöm.
Csak ordibálj és hallgasd ahogy mások ordítanak.
De vigyázz!
Nehogy egy pillanatra egyedül maradj magaddal. A csend a legfélelmetesebb.
Hiszen a csendben tükörbe kéne nézned.', 4),
('Zoé', 'A sötétség érezte közelgő vesztét,
Mert mikor megjöttél, elűzted az estét.
Egyen voltunk ketten még előző kedden,
Szerda virradóra ketten lettünk egyen.
Jöttöd felvarrotta szívünkre a foltot,
Pedig nem is tudtuk, hogy előtte lyuk volt ott.
Legyél hát részese olyan boldogságnak,
Mint amit Te hoztál ennek a családnak.', 4),
('Itt az új évezred', 'Jó!
Én amúgy is mindent szeretek ami öko, bio, ezo, mizo, mezo,
Csakra, tantra, mantra, vadzsramandala.
(Vega, vegán, neo-paleo.)
Különben is, azt mondta a Vadzsraguru Dzsunior Szabcsi,
Hogy az ő rendszerükben még füvet is lehet szívni.
Csak gyakorlásnak kell hívni.
Meg azt is, hogy ha nem veszek neki kávét kutyaként születek újra.
Ne vitatkozz velem, rajta van sárga lepel, úgyhogy NÁLAD biztos jobban tudja!!!
Egyébként jobb ma egy kutya, mint holnap két mutya.
Abban legalább nincs benne, hogy "mu", ami valami zen nyavalya.
Na szeva.
Jön a buszom, megyek a Kálvinra.
Partyba.', 4);


