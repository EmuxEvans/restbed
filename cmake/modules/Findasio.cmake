# Copyright 2013-2016, Corvusoft Ltd, All Rights Reserved.

find_path( asio_INCLUDE asio.hpp HINTS "${CMAKE_SOURCE_DIR}/dependency/asio/asio/include" "/usr/include" "/usr/local/include" "/opt/local/include" )

if ( asio_INCLUDE )
    set( ASIO_FOUND TRUE )
    set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DASIO_STANDALONE=YES" )

    message( STATUS "${Green}Found ASIO include at: ${asio_INCLUDE}${Reset}" )
else ( )
    message( FATAL_ERROR "${Red}Failed to locate ASIO dependency.${Reset}" )
endif ( )
