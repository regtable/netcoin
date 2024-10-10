
#!/bin/bash

# Define the files where Boost dependencies are to be replaced
FILES_TO_UPDATE=(
    "src/util.cpp"
    "src/util.h"
    "src/net.cpp"
    "src/db.cpp"
    "src/addrman.cpp"
    "src/init.cpp"
)

# Backup original files
for file in "${FILES_TO_UPDATE[@]}"; do
    cp $file $file.bak
done

# Replace Boost libraries with C++17 features
for file in "${FILES_TO_UPDATE[@]}"; do
    # Replace boost::thread with std::thread
    sed -i 's/#include <boost\/thread\.hpp>/#include <thread>/g' $file
    sed -i 's/boost::thread/std::thread/g' $file
    
    # Replace boost::filesystem with std::filesystem
    sed -i 's/#include <boost\/filesystem\.hpp>/#include <filesystem>/g' $file
    sed -i 's/boost::filesystem/std::filesystem/g' $file
    
    # Replace boost::regex with std::regex
    sed -i 's/#include <boost\/regex\.hpp>/#include <regex>/g' $file
    sed -i 's/boost::regex/std::regex/g' $file

    # Replace boost::bind with std::bind or lambdas
    sed -i 's/boost::bind/std::bind/g' $file
done

echo "Boost dependencies have been replaced with C++17 features."
