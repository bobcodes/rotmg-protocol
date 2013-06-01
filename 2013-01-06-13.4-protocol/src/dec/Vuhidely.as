package dec
{
[CLASS1642]   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.map.Lakum;
   import com.company.util.Cytiheho;


   class Vuhidely extends Gifog
   {
      function Vuhidely() {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:String = null;
         var _loc3_:* = 0;
         var _loc4_:Fequjaq = null;
         super(Duj.jejem);
         var _loc2_:Vector.<String> = new Vector.<String>();
         for (_loc1_ in Lakum.ronifyva)
         {
            _loc2_.push(_loc1_);
         }
         _loc2_.sort(Cytiheho.munapycy);
         for each (_loc1_ in _loc2_)
         {
            _loc3_=Lakum.ronifyva[_loc1_];
            _loc4_=new Fequjaq(Lakum.zedij[_loc3_]);
            remihigi(_loc4_);
         }
         return;
      }
   }
[/CLASS]
}