Wykorzystane narzędzia:
Windows 10
Visual Studio Code 1.79.2 (user setup)
Python 3.10.7
Chromedriver
Chrome Web Browser 114.0.5735.134 

Pakiety:
selenium 
robotframework 
robotframework-seleniumlibrary

Testowana aplikacja webowa:
https://www.amazon.pl/

Test 1: Testowanie szybkości procedury dodania produktu do koszyka - koszyk.robot

Test ma na celu sprawdzenie szybkości procedury dodawania produktu do koszyka na stronie amazon.pl. Procedura obejmuje załadowanie strony, wyszukanie produktu "piłka", otwarcie pierwszego znalezionego produktu i dodanie go do koszyka.


Test 2: Testowanie możliwości wyszukania produktu z narzuconym filtrem

Test sprawdza proces wyszukiwania produktu na stronie amazon.pl, zastosowanie filtru ceny oraz zrzut ekranu wyniku.


Test 3: Testowanie możliwości wyszukania produktu z narzuconym filtrem

Test ma na celu sprawdzenie możliwości logowania na stronie amazon.pl za pomocą niezarejestrowanego e-maila. Procedura obejmuje załadowanie strony, otwarcie strony logowania, wpisanie niezarejestrowanego maila i sprawdzenie czy wyświetla się odpowiedni komunikat. 
