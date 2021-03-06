//+------------------------------------------------------------------+
//|                                                       NewBar.mqh |
//|                                                    Akimasa Ohara |
//|                                                                  |
//+------------------------------------------------------------------+
#property copyright "Akimasa Ohara"
#property link      ""
#property version   "1.00"
class NewBar
  {

public:
     static bool           IsNewBar(string symbol, ENUM_TIMEFRAMES tf);           
  };

// 新しく追加されたバーか判定する処理
static bool NewBar::IsNewBar(string symbol, ENUM_TIMEFRAMES tf){
   static datetime time = 0;
   if(iTime(symbol, tf, 0) != time)
   {
      time = iTime(symbol, tf, 0);
      return true;
   }
   return false;
}