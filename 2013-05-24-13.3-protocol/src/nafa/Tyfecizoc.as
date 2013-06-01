package nafa
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.util.Rc4HexStringDecoder;


   class Tyfecizoc extends Kumip
   {
      function Tyfecizoc() {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:String = null;
         var _loc3_:* = 0;
         var _loc4_:XML = null;
         var _loc5_:Nurupoquq = null;
         super(Himo.himuvypeb);
         var _loc2_:Vector.<String> = new Vector.<String>();
         for (_loc1_ in ObjectLibrary.tumu)
         {
            _loc2_.push(_loc1_);
         }
         _loc2_.sort(Rc4HexStringDecoder.hum);
         for each (_loc1_ in _loc2_)
         {
            _loc3_=ObjectLibrary.tumu[_loc1_];
            _loc4_=ObjectLibrary.tem[_loc3_];
            if((_loc4_.hasOwnProperty("Item"))||(_loc4_.hasOwnProperty("Player"))||_loc4_.Class=="Projectile")
            {
            }
            else
            {
               _loc5_=new Nurupoquq(_loc4_);
               pozecoh(_loc5_);
            }
         }
         return;
      }
   }

}