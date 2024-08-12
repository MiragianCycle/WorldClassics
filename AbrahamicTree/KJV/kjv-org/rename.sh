#!/bin/bash

# Function to get the full name of a book
get_book_name() {
    case "$1" in
        "GEN") echo "Genesis" ;;
        "EXO") echo "Exodus" ;;
        "LEV") echo "Leviticus" ;;
        "NUM") echo "Numbers" ;;
        "DEU") echo "Deuteronomy" ;;
        "JOS") echo "Joshua" ;;
        "JDG") echo "Judges" ;;
        "RUT") echo "Ruth" ;;
        "1SA") echo "1Samuel" ;;
        "2SA") echo "2Samuel" ;;
        "1KI") echo "1Kings" ;;
        "2KI") echo "2Kings" ;;
        "1CH") echo "1Chronicles" ;;
        "2CH") echo "2Chronicles" ;;
        "EZR") echo "Ezra" ;;
        "NEH") echo "Nehemiah" ;;
        "EST") echo "Esther" ;;
        "JOB") echo "Job" ;;
        "PSA") echo "Psalms" ;;
        "PRO") echo "Proverbs" ;;
        "ECC") echo "Ecclesiastes" ;;
        "SNG") echo "SongOfSolomon" ;;
        "ISA") echo "Isaiah" ;;
        "JER") echo "Jeremiah" ;;
        "LAM") echo "Lamentations" ;;
        "EZE") echo "Ezekiel" ;;
        "DAN") echo "Daniel" ;;
        "HOS") echo "Hosea" ;;
        "JOL") echo "Joel" ;;
        "AMO") echo "Amos" ;;
        "OBA") echo "Obadiah" ;;
        "JON") echo "Jonah" ;;
        "MIC") echo "Micah" ;;
        "NAM") echo "Nahum" ;;
        "HAB") echo "Habakkuk" ;;
        "ZEP") echo "Zephaniah" ;;
        "HAG") echo "Haggai" ;;
        "ZEC") echo "Zechariah" ;;
        "MAL") echo "Malachi" ;;
        "MAT") echo "Matthew" ;;
        "MRK") echo "Mark" ;;
        "LUK") echo "Luke" ;;
        "JHN") echo "John" ;;
        "ACT") echo "Acts" ;;
        "ROM") echo "Romans" ;;
        "1CO") echo "1Corinthians" ;;
        "2CO") echo "2Corinthians" ;;
        "GAL") echo "Galatians" ;;
        "EPH") echo "Ephesians" ;;
        "PHP") echo "Philippians" ;;
        "COL") echo "Colossians" ;;
        "1TH") echo "1Thessalonians" ;;
        "2TH") echo "2Thessalonians" ;;
        "1TI") echo "1Timothy" ;;
        "2TI") echo "2Timothy" ;;
        "TIT") echo "Titus" ;;
        "PHM") echo "Philemon" ;;
        "HEB") echo "Hebrews" ;;
        "JAS") echo "James" ;;
        "1PE") echo "1Peter" ;;
        "2PE") echo "2Peter" ;;
        "1JN") echo "1John" ;;
        "2JN") echo "2John" ;;
        "3JN") echo "3John" ;;
        "JUD") echo "Jude" ;;
        "REV") echo "Revelation" ;;
        *) echo "" ;;
    esac
}

for file in [0-9][0-9]_*.org; do
    if [[ $file =~ ^[0-9][0-9]_([A-Z1-3]+)\.org$ ]]; then
        abbr=${BASH_REMATCH[1]}
        new_name=$(get_book_name "$abbr")
        if [[ -n "$new_name" ]]; then
            new_file="${new_name}.org"
            if [[ ! -e "$new_file" ]]; then
                mv "$file" "$new_file"
                echo "Renamed $file to $new_file"
            else
                echo "Error: $new_file already exists. Skipping $file."
            fi
        else
            echo "No match found for $file"
        fi
    fi
done
