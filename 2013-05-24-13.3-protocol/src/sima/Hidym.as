package sima
{
   import nec.Zirewe;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.AppendingLineBuilder;


   public class Hidym extends Mubij
   {
      public function Hidym() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         foqub=new AppendingLineBuilder();
         return;
      }

      private var itemXML:XML;

      private var curItemXML:XML;

      private var totezih:XML;

      private var paquk:XML;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.itemXML=param1;
         this.curItemXML=param2;
         this.totezih=param1.Projectile[0];
         this.paquk=param2.Projectile[0];
         this.risugywi();
         this.riduj();
         gawoc[this.totezih.toXMLString()]=true;
         return;
      }

      private function risugywi() : Zirewe {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:int = int(this.totezih.MinDamage);
         var _loc2_:int = int(this.totezih.MaxDamage);
         var _loc3_:int = int(this.paquk.MinDamage);
         var _loc4_:int = int(this.paquk.MaxDamage);
         var _loc5_:Number = (_loc1_+_loc2_)/2;
         var _loc6_:Number = (_loc3_+_loc4_)/2;
         var _loc7_:uint = gynuha(_loc5_-_loc6_);
         var _loc8_:String = _loc1_==_loc2_?_loc2_.toString():_loc1_+" - "+_loc2_;
         return foqub.pushParams(I18nKeys.DAMAGE,{damage:"<font color=\"#"+_loc7_.toString(16)+"\">"+_loc8_+"</font>"});
      }

      private function riduj() : Zirewe {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Number = Number(this.totezih.Speed)*Number(this.totezih.LifetimeMS)/10000;
         var _loc2_:Number = Number(this.paquk.Speed)*Number(this.paquk.LifetimeMS)/10000;
         var _loc3_:uint = gynuha(_loc1_-_loc2_);
         return foqub.pushParams(I18nKeys.hetez,{range:"<font color=\"#"+_loc3_.toString(16)+"\">"+_loc1_+"</font>"});
      }
   }

}