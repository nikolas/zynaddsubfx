# Once done this will define:
#  MXML_FOUND         - system has MXML
#  MXML_INCLUDE_DIRS  - incude paths to use MXML
#  MXML_LIBRARIES     - Link these to use MXML

SET(MXML_FOUND FALSE)

FIND_PATH(MXML_INCLUDE_DIRS
    PATHS "C:/Program Files/mxml"
    NAMES mxml.h)
FIND_LIBRARY(MXML_LIBRARIES
    PATHS "C:/Program Files/mxml"
    NAMES mxml mxml1)

# handle the QUIETLY and REQUIRED arguments and set MXML_FOUND to TRUE if 
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(MXML DEFAULT_MSG MXML_LIBRARIES MXML_INCLUDE_DIRS)
MARK_AS_ADVANCED(MXML_INCLUDE_DIRS MXML_LIBRARIES)