#include "script_component.hpp"
private ["_timeSync","_update","_sdate","_cdate","_syr","_smt","_sdy","_shr","_smn","_cyr","_cmt","_cdy","_chr","_cmn"];
LOG("Client sync");
_sdate = _this;
_cdate = date;
TRACE_3("Time Sync received", time, _sdate, _cdate);
_syr = _sdate select 0;
_smt = _sdate select 1;
_sdy = _sdate select 2;
_shr = _sdate select 3;
_smn = _sdate select 4;

_cyr = _cdate select 0;
_cmt = _cdate select 1;
_cdy = _cdate select 2;
_chr = _cdate select 3;
_cmn = _cdate select 4;

_update = false;
_timeSync = 2;


// Do any of the MAJOR date values differ?
if(
        _syr != _cyr ||
        _smt != _cmt ||
        _sdy != _cdy ||
        _shr != _chr
) then {
        // We'll need setDate to sync
        _timeSync = 2;
        _update = true;
};

// Do just the minutes differ?
if(_smn != _cmn) then {
        _update = true;
};

// Do we need to sync?
if(_update) then {
        switch (_timeSync) do {
                // Monitor only
                case 0: {
						TRACE_3("Time Sync monitor", time, _sdate, _cdate);
                        //LOG(format["Time Sync: Monitor S %2 C %3", time, _sdate, _cdate]);
                };
                // Use skipTime if possible
                case 1: {
                        skipTime ((_smn - _cmn) / 60);
						TRACE_4("Time Sync skiptime", time, _sdate, _cdate, date);
                };
                // Use setDate
                case 2: {
                        setDate _sdate;
						TRACE_4("Time Sync setDate", time, _sdate, _cdate, date);

                };
        };
};