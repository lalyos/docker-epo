#!/bin/bash

cat > /var/www/html/index.html << EOF
<html lang="en">
<head>
</head>
<body bgcolor="${COLOR:-gray}">

    <h2>${TITLE:-Welcome}</h2>
    
    ${BODY:-Please use TITLE/COLOR/BODY env vars}
</body>
</html>

EOF

nginx -g "daemon off;"