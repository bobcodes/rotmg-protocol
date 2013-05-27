package nafa
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.map.Qezab;
   import com.company.util.Dapiby;


   class Kihec extends Kumip
   {
      function Kihec() {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:String = null;
         var _loc3_:* = 0;
         var _loc4_:Dozobicu = null;
         super(Himo.zacuzo);
         var _loc2_:Vector.<String> = new Vector.<String>();
         for (_loc1_ in Qezab.tumu)
         {
            _loc2_.push(_loc1_);
         }
         _loc2_.sort(Dapiby.hum);
         for each (_loc1_ in _loc2_)
         {
            _loc3_=Qezab.tumu[_loc1_];
            _loc4_=new Dozobicu(Qezab.tem[_loc3_]);
            pozecoh(_loc4_);
         }
         return;
      }
   }

}