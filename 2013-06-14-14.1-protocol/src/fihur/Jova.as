package fihur
{
   import jediwip.Tunyhazo;
   import komi.Vibemod;
   import jediwip.AppendingLineBuilder;


   public class Jova extends Qudicy
   {
      public function Jova() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         bycavima=new AppendingLineBuilder();
         return;
      }

      private var itemXML:XML;

      private var curItemXML:XML;

      private var dulusah:XML;

      private var cazigapib:XML;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.itemXML=param1;
         this.curItemXML=param2;
         this.dulusah=param1.Projectile[0];
         this.cazigapib=param2.Projectile[0];
         this.kyhu();
         this.vabe();
         lor[this.dulusah.toXMLString()]=true;
         return;
      }

      private function kyhu() : Tunyhazo {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:int = int(this.dulusah.MinDamage);
         var _loc2_:int = int(this.dulusah.MaxDamage);
         var _loc3_:int = int(this.cazigapib.MinDamage);
         var _loc4_:int = int(this.cazigapib.MaxDamage);
         var _loc5_:Number = (_loc1_+_loc2_)/2;
         var _loc6_:Number = (_loc3_+_loc4_)/2;
         var _loc7_:uint = musybiboj(_loc5_-_loc6_);
         var _loc8_:String = _loc1_==_loc2_?_loc2_.toString():_loc1_+" - "+_loc2_;
         return bycavima.pushParams(Vibemod.DAMAGE,{damage:"<font color=\"#"+_loc7_.toString(16)+"\">"+_loc8_+"</font>"});
      }

      private function vabe() : Tunyhazo {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Number = Number(this.dulusah.Speed)*Number(this.dulusah.LifetimeMS)/10000;
         var _loc2_:Number = Number(this.cazigapib.Speed)*Number(this.cazigapib.LifetimeMS)/10000;
         var _loc3_:uint = musybiboj(_loc1_-_loc2_);
         return bycavima.pushParams(Vibemod.jetywatob,{range:"<font color=\"#"+_loc3_.toString(16)+"\">"+_loc1_+"</font>"});
      }
   }

}