package noniq
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.map.Qemujy;
   import com.company.util.Tafoji;


   class Taroja extends Qenynyb
   {
      function Taroja() {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:String = null;
         var _loc3_:* = 0;
         var _loc4_:Hevika = null;
         super(Cariwepy.pivycina);
         var _loc2_:Vector.<String> = new Vector.<String>();
         for (_loc1_ in Qemujy.nezuwy)
         {
            _loc2_.push(_loc1_);
         }
         _loc2_.sort(Tafoji.joluw);
         for each (_loc1_ in _loc2_)
         {
            _loc3_=Qemujy.nezuwy[_loc1_];
            _loc4_=new Hevika(Qemujy.ziq[_loc3_]);
            casaluzez(_loc4_);
         }
         return;
      }
   }

}