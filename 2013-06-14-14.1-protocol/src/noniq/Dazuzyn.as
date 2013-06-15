package noniq
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.util.Tafoji;


   class Dazuzyn extends Qenynyb
   {
      function Dazuzyn() {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc1_:String = null;
         var _loc3_:* = 0;
         var _loc4_:XML = null;
         var _loc5_:Rupyw = null;
         super(Cariwepy.nanyt);
         var _loc2_:Vector.<String> = new Vector.<String>();
         for (_loc1_ in ObjectLibrary.nezuwy)
         {
            _loc2_.push(_loc1_);
         }
         _loc2_.sort(Tafoji.joluw);
         for each (_loc1_ in _loc2_)
         {
            _loc3_=ObjectLibrary.nezuwy[_loc1_];
            _loc4_=ObjectLibrary.ziq[_loc3_];
            if((_loc4_.hasOwnProperty("Item"))||(_loc4_.hasOwnProperty("Player"))||_loc4_.Class=="Projectile")
            {
            }
            else
            {
               _loc5_=new Rupyw(_loc4_);
               casaluzez(_loc5_);
            }
         }
         return;
      }
   }

}