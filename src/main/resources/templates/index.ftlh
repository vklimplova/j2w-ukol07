[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
    <h1>Veroničin blog</h1>
    [#list posty.content]
    <table class="u-full-width">
        <thead>
        <tr>
            <th>Zápisek</th>
            <th>Autor</th>
            <th>Datum publikování</th>
            <th>O čem píšu?</th>
        </tr>
        </thead>
        <tbody>
        [#items as post]
        <tr>
            <td>${post.title}</td>
            <td>${post.author}</td>
            <td>${post.published?date?string}</td>
            <td>${post.perex?no_esc}</td>

            <td><a href="/post/${post.slug}">Celý zápisek zde</a></td>
        </tr>
        [/#items]
        </tbody>
    </table>
    [#else]
    <div>Na blogu nejsou žádné články k přečtení.</div>
    [/#list]
</body>
</html>
