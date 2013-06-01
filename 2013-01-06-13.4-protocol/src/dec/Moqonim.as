package dec
{
[CLASS1640]   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.util.Cytiheho;


   class Moqonim extends Gifog
   {
      function Moqonim() {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc1_:String = null;
         var _loc3_:* = 0;
         var _loc4_:XML = null;
         var _loc5_:Qinod = null;
         super(Duj.kehozyby);
         var _loc2_:Vector.<String> = new Vector.<String>();
         for (_loc1_ in ObjectLibrary.ronifyva)
         {
            _loc2_.push(_loc1_);
         }
         _loc2_.sort(Cytiheho.munapycy);
         for each (_loc1_ in _loc2_)
         {
            _loc3_=ObjectLibrary.ronifyva[_loc1_];
            _loc4_=ObjectLibrary.zedij[_loc3_];
            if((_loc4_.hasOwnProperty("Item"))||(_loc4_.hasOwnProperty("Player"))||_loc4_.Class=="Projectile")
            {
            }
            else
            {
               _loc5_=new Qinod(_loc4_);
               remihigi(_loc5_);
            }
         }
         return;
      }
   }
[/CLASS]
}