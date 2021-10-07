#!/bin/bash

cat > /var/www/html/index.html <<EOF
<html>
<body bgcolor="$COLOR">
<h1>$TITLE</h1>

$BODY

<hr/>
Host: ${HOSTNAME}
</body>
</html>
EOF

nginx -g "daemon off;"