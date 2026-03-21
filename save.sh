#!/bin/bash
echo ""
echo "     *"
echo "    /^\\"
echo "   / ^ \\"
echo "  / .-. \\"
echo " | (o o) |"
echo " |   ^   |"
echo "  \\_____/"
echo "   |   |"
echo " __|___|__"
echo "|_________|"
echo "   |   |"
echo "  /|   |\\"
echo " / |   | \\"
echo ""
echo " === DUNGEON SAVE SYSTEM ==="
echo ""
read -p "Save name (max 20 characters): " NOM
NOM=${NOM:0:20}

echo ""
echo "Choose an option:"
echo "  GIT - Add and commit to Git"
echo "  ZIP - Create a zip archive"
echo ""
read -p "Your choice (GIT/ZIP): " CHOICE
CHOICE=$(echo "$CHOICE" | tr '[:lower:]' '[:upper:]')

if [ "$CHOICE" = "GIT" ]; then
    git add .
    git commit -m "$NOM"
    echo "Save \"$NOM\" committed successfully!"
elif [ "$CHOICE" = "ZIP" ]; then
    zip -r "$NOM.zip" . --exclude "*.zip"
    echo "Save \"$NOM.zip\" created successfully!"
else
    echo "Invalid choice."
fi
