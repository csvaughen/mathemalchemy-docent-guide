---
tags: [docent, activity, cryptography, puzzle]
scene: "[[Silhouettes and Vortices]]"
---
# Activity: Decode the Banner

The skateboarder in [[Silhouettes and Vortices]] carries a pennant flag covered in small black and white squares. They are **not decoration**: the flag carries a genuine hidden message, and with nothing but patience you can read it. This is a decode-it-yourself activity for gallery visits or the classroom. *(No spoilers on this page — the message is not printed anywhere on this site.)*

## The hook 
> "See the skateboarder's flag? Those aren't decoration — every column of squares is a letter, written in the same code your phone uses for every text you've ever sent. And the artists hid one extra trick in it. Want to crack it?"

## How the code works
- **Binary:** every square is a **bit** — white = 1, black = 0.
- **ASCII:** each column of 8 squares, read **top → bottom**, is the 8-bit ASCII code for one character; columns read **left → right**. This is genuinely the encoding inside every text message and web page → [[Cryptography]].
- **The camouflage:** look at the top row of the flag. Noticing what's odd about it — and working out *why* — is the first "aha" of the decode.
- **A real cryptanalyst's opening move:** don't decode letter by letter from the start. First find the **spaces** (columns that are almost entirely black, with a single white square). Mark them and you know the *shape* of the message — how many words, and how long each one is — before reading a single letter. Codebreakers have started exactly this way for centuries.
- **The clue on the tip:** the tiny **Mars rover** silhouette at the pennant's tip hints at the theme of the message.

## Where this code comes from
Every quirk you decode on the flag was a decision made for a machine that no longer exists.

- **1870s — the 5-bit ancestor.** Émile Baudot built a fixed-width, 5-bit telegraph code so a *machine* could read it. Morse can't: it's variable-length (`E` is one dot, `Q` is four symbols) and leans on a human ear for the gaps between letters. Baudot's name survives every time we say **baud**.
- **The teleprinter.** A telegraph that types itself — you type a letter, a machine at the far end prints it, and nobody at either end needs to know Morse. They printed in **capitals only**, which is why old telegrams shout.
- **1963 — ASCII.** Seven bits, 128 characters. Every bit cost real money to send down a wire, so nobody paid for an eighth. This version had **no lowercase at all**.
- **1967 — lowercase arrives**, parked exactly **32** above each capital. That's why a single square decides the case, and why pressing **Shift** is, underneath, subtracting 32.
- **The leftover square.** The 8-bit byte became standard only *afterward*, leaving ASCII's seven bits sitting inside it with one bit spare — the flag's all-black top row. That spare bit has since been spent on error checks, then on rival character sets, and now on UTF-8, which is how one code handles every writing system on earth.

A fossil you can still touch: "carriage return" and "line feed" are two separate characters because on a teleprinter they were two separate mechanical actions — slam the printing carriage back to the left, then roll the paper up one line. Every text file on your computer still chooses between them.

## Gallery quick hit (3–5 min)
1. Deliver the hook and give the encoding rule (white = 1, black = 0, eight per column).
2. Have visitors decode **just the first column** with a decoder card.
3. Invite them to find the spaces and guess the message from its shape — then send them home with the worksheet to finish. *(Resist confirming or denying guesses!)*

## Classroom / docent-led decode (25–40 min)
1. **Notice** (5 min): What do you see? Is it random? How many columns?
2. **Landmarks first** (5 min): find every space column; write the word-length shape on the board.
3. **Guess!** (5 min): with only the shape and the rover clue, what could it say? Collect guesses. *(Let them guess — the wrongness is the lesson.)*
4. **Decode** (10–15 min): assign columns to pairs and assemble the message like a jigsaw.
5. **Debrief** (5 min): whose guess was right? What finally settled it — cleverness, or carefully reading the data? Both matter; only one is *evidence*.

## The Shannon guessing game (extension, 10 min)
The flag is about 200 squares, but the message doesn't *contain* 200 squares' worth of surprise — English is redundant, carrying only ~1–1.5 bits of real information per letter, not 8. The person who figured out how to **measure** that was **Claude Shannon**, father of information theory and inventor of the word **"bit."** Every square on this banner is one of his bits.

**Play his actual 1951 experiment:** once the group knows the message exists (but not what it says), reveal it *one character at a time* — and before each reveal, the group must guess the next character. Tally the guesses. Early letters are expensive; once a word is half-revealed, the rest come nearly free. That tally is a genuine measurement of the information content of English — Shannon ran exactly this experiment (famously with his wife Betty as the guesser).

**The kicker:** "guess the next letter" is, almost word for word, what today's generative AI does — predict the next token, over and over, having practiced Shannon's game on much of the written internet. The chain runs unbroken from this flag to the chatbot in your pocket:

> binary code → Shannon's bits → the 1951 guessing game → autocorrect and predictive text → large language models

**Shannon the tinkerer:** Shannon juggled, rode a unicycle through the halls of Bell Labs, and built gleefully unnecessary machines — a flame-throwing trumpet, a Roman-numeral calculator called THROBAC, and Theseus, a maze-learning mechanical mouse that was one of the first machine-learning devices ever built. *"Serious math, made by people playing"* — he would have loved Mathemalchemy.

## Why this activity earns its spot
One small detail on one flag unfolds into binary, ASCII, codebreaking tactics, a Mars rover, the invention of the bit, a 1951 guessing game, and the AI in your pocket. Every scene in Mathemalchemy is dense like this — pull any thread and it keeps going. → [[Cryptography Quilt]] makes the natural next stop: redundancy is the codebreaker's best friend, so real ciphers work hard to destroy it (Shannon founded that mathematics too).

## Materials
Two one-page printables, free to download and print:

- **[[Decode the Banner - Worksheet.pdf|Worksheet (PDF)]]** — the flag redrawn as a clean 8×25 grid, one answer box per column. One per decoder.
- **[[Decode the Banner - Decoder Card.pdf|Decoder card (PDF)]]** — how to turn a column of squares into a number, with two large worked examples. One per decoder.
- **[[ASCII Table 0-127.pdf|ASCII table (PDF)]]** — all 128 characters on one page, for looking up the number once you've worked it out.

The decoder card teaches the structure above rather than just listing letters, so a student who works from it can rebuild any character from scratch — it deliberately stops at the *number*, and the ASCII table finishes the job. A Shannon-game score sheet and the answer key are available from the docent coordinator. The solution is deliberately kept off this site so visitors get the real thing: the moment the message comes up out of the squares for *them*.

