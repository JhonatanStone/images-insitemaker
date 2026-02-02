# Images insitemaker

Este repositório publica imagens e vídeos via GitHub Pages e oferece uma galeria com botão de copiar link.

## Como acessar

Depois de habilitar o GitHub Pages (Settings → Pages → branch `master` e pasta `/`), o site fica em:

https://jhonatanstone.github.io/images-insitemaker/

## Como usar os links no seu site

Exemplo:

https://jhonatanstone.github.io/images-insitemaker/APP%20Stone_2026-02-02_10_27/025-089_Stone_Modelo_Pe%C3%A7a_Inside_Sales_0000s_0000_MAQUININHAS_ipucqb.png

## Como adicionar novas mídias

1. Coloque as imagens e vídeos em qualquer pasta dentro do repositório.
2. Rode o script que atualiza automaticamente a lista:

```
./update-files.sh
```

3. Faça commit e push dos arquivos alterados:

```
git add files.json

git commit -m "Atualiza lista de mídias"

git push
```

## Formatos suportados

Imagens: `.png`, `.jpg`, `.jpeg`, `.webp`, `.gif`, `.svg`

Vídeos: `.mp4`, `.mov`, `.webm`, `.m4v`, `.avi`, `.mkv`
