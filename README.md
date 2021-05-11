# ClockWidget

```
>>> pip install PySt5
>>> pip install pyinstaller
```

![ss](https://user-images.githubusercontent.com/73230039/117880596-f6d3dc80-b2b0-11eb-9640-60f3d97884e8.jpg)



Create app by pyinstaller

```
>>> pyinstaller app.py
>>> pyi-makespec app.py
>>> pyinstaller app.py
```

app.spec

> ...
> a = Analysis(['app.py'],
>              ...
>              datas=[('PATH TO UI', 'UI')],
>              hiddenimports=[],
> 
> ...
> exe = EXE(pyz,
>           a.scripts,
>           console=False )

`>>> pyinstaller app.spec`

ClockWidget/dist/app.exe
![ss1](https://user-images.githubusercontent.com/73230039/117880124-6a291e80-b2b0-11eb-8593-13682599469a.jpg)


