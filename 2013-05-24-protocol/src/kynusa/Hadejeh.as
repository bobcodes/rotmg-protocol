package kynusa
{
   import komawowag.Tom;
   import hotewa.Baqifa;
   import jiha.Hevorim;
   import damul.Qyfa;


   public class Hadejeh extends Object implements Tom
   {
      public function Hadejeh() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var muwi:Baqifa;

      public var biwihih:Hevorim;

      public var vifa:Qyfa;

      public function approve() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.muwi.cuvo()>=this.vifa.price;
         if(!_loc1_)
         {
            this.biwihih.dispatch();
         }
         return _loc1_;
      }
   }

}