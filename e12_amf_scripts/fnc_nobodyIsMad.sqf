#include "script_component.hpp"
if(isServer) then {
	if(isMultiplayer) then {
		#define __ALLPLAYERS playableunits
	}else{
		#define __ALLPLAYERS switchableunits
	};

	[] spawn {
		while{true} do {
			{
				while {(rating _x) < 2000} do {
					_x addRating 6000;
					//player globalChat format ["Rating added, now:%1", str(rating _x)];
				};
			}foreach __ALLPLAYERS;
		
			sleep 60;
		};
	};
};