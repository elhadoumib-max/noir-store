#!/data/data/com.termux/files/usr/bin/bash

echo "=============================="
echo "     تجهيز متجر NOIR"
echo "=============================="

if [ ! -f index.html ]; then
    echo "خطأ: index.html غير موجود"
    exit 1
fi

echo "✓ index.html موجود"

cp index.html "backup-$(date +%Y%m%d-%H%M%S).html"

echo "✓ تم إنشاء نسخة احتياطية"
echo "✓ المتجر جاهز"

echo ""
echo "لتشغيل المتجر:"
echo "python -m http.server 8080 --bind 127.0.0.1"
