NAME            =       containers
CXX                     =       c++
CXXFLAGS        =       -Wall -Wextra -Werror -std=c++98

SRC                     =       ./srcs/map_test.cpp \

SVS                     =       ./srcs/vector_and_stack_test.cpp \

SMP                     =       ./srcs/containers_perf.cpp \

OBJ                     =       $(SRC:%.cpp=%.o)

OBVS            =       $(SVS:%.cpp=%.o)

OBMP            =       $(SMP:%.cpp=%.o)

all:                            $(NAME)

$(NAME):                        $(OBJ)
                                        $(CXX) $(CXXFLAGS) $(OBJ) -o $(NAME)

map:                            all
                                        ./containers

vector_stack:           $(OBVS)
                                        $(CXX) $(CXXFLAGS) $(OBVS) -o $(NAME)
                                        ./containers

containers_perf:        $(OBMP)
                                        $(CXX) $(CXXFLAGS) $(OBMP) -o $(NAME)
                                        ./containers

clean:
                        rm -rf $(OBJ)
                        rm -rf $(OBVS)
                        rm -rf $(OBMP)

fclean:         clean
                        rm -rf $(NAME)

re:                     fclean all

run:
                        make && ./$(NAME)

.PHONY:         all clean fclean re
