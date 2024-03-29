# Copyright (c) 2023-2024 Christian Hinkle, Brian Hinkle.

include(CMakeFindDependencyMacro)

# Get the Boost export.
find_dependency(Boost CONFIG COMPONENTS filesystem)

# Include our export. This imports all of our targets.
include("${CMAKE_CURRENT_LIST_DIR}/MeddySDK_MeddyprojectExport.cmake")

#
# Add alias targets whose names match those from the project file.
#
# It's important to make sure the names are the same for consistency. Namely, so that build
# interface users can use `OVERRIDE_FIND_PACKAGE` with `FetchContent_Declare()`.
#

add_library(MeddySDK::Meddyproject ALIAS MeddySDK_Meddyproject)
