package sibaworop
{
   import hotewa.Baqifa;
   import fulaw.Vihekivuc;
   import kabam.rotmg.assets.services.Cafe;
   import __AS3__.vec.Vector;
   import fulaw.Jimi;
   import fulaw.Dasin;
   import com.company.util.ConversionUtil;


   public class Fezabaga extends Object
   {
      public function Fezabaga() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var muwi:Baqifa;

      public var sydo:Vihekivuc;

      public var factory:Cafe;

      private var sor:int;

      private var legends:Vector.<Seqyw>;

      public function vunam(param1:XML) : Vector.<Seqyw> {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sor=this.muwi.lyhiqumi();
         this.legends=new Vector.<Seqyw>(0);
         this.ryne(param1.FameListElem,false);
         this.ryne(param1.MyFameListElem,true);
         return this.legends;
      }

      private function ryne(param1:XMLList, param2:Boolean) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:XML = null;
         var _loc4_:Seqyw = null;
         for each (_loc3_ in param1)
         {
            if(!this.tiqefuv(_loc3_))
            {
               _loc4_=this.qeguvove(_loc3_);
               _loc4_.vogu=_loc3_.@accountId==this.sor;
               _loc4_.safafyca=param2;
               this.legends.push(_loc4_);
            }
         }
         return;
      }

      private function tiqefuv(param1:XML) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Seqyw = null;
         for each (_loc2_ in this.legends)
         {
            if(_loc2_.accountId==param1.@accountId&&_loc2_.charId==param1.@charId)
            {
               return true;
            }
         }
         return false;
      }

      public function qeguvove(param1:XML) : Seqyw {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc2_:int = param1.ObjectType;
         var _loc3_:int = param1.Texture;
         var _loc4_:Jimi = this.sydo.lyt(_loc2_);
         var _loc5_:Dasin = _loc4_.socucu.sek(_loc3_);
         var _loc6_:int = param1.hasOwnProperty("Tex1")?param1.Tex1:0;
         var _loc7_:int = param1.hasOwnProperty("Tex2")?param1.Tex2:0;
         var _loc8_:Seqyw = new Seqyw();
         _loc8_.accountId=param1.@accountId;
         _loc8_.charId=param1.@charId;
         _loc8_.name=param1.Name;
         _loc8_.nafydysi=param1.TotalFame;
         _loc8_.character=this.factory.makeIcon(_loc5_.ladewavaq,100,_loc6_,_loc7_);
         _loc8_.bejojy=_loc4_.jonicez;
         _loc8_.ril=ConversionUtil.pasywe(param1.Equipment);
         return _loc8_;
      }
   }

}