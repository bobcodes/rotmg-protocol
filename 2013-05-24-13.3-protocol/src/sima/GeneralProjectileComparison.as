package sima
{
   import nec.AppendingLineBuilder;
   import povopito.Fury;
   import aaa.rotmg.i18n.I18nKeys;


   public class GeneralProjectileComparison extends Mubij
   {
      public function GeneralProjectileComparison() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
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
         foqub=new AppendingLineBuilder();
         if(param1.hasOwnProperty("NumProjectiles"))
         {
            this.tefapi();
            gawoc[param1.NumProjectiles.toXMLString()]=true;
         }
         if(param1.hasOwnProperty("Projectile"))
         {
            this.libarufe();
            gawoc[param1.Projectile.toXMLString()]=true;
         }
         this.sel();
         return;
      }

      private function libarufe() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.rinetisa();
         var _loc1_:Number = Number(this.totezih.Speed)*Number(this.totezih.LifetimeMS)/10000;
         var _loc2_:Number = Number(this.paquk.Speed)*Number(this.paquk.LifetimeMS)/10000;
         var _loc3_:String = Fury.cas(_loc1_);
         foqub.pushParams(I18nKeys.hetez,{range:zerefuhen(_loc3_,gynuha(_loc1_-_loc2_))});
         if(this.totezih.hasOwnProperty("MultiHit"))
         {
            foqub.pushParams(I18nKeys.gysofo,{},Fury.jocup(tiheb),Fury.rig());
         }
         if(this.totezih.hasOwnProperty("PassesCover"))
         {
            foqub.pushParams(I18nKeys.wowiluq,{},Fury.jocup(tiheb),Fury.rig());
         }
         return;
      }

      private function tefapi() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:int = int(this.itemXML.NumProjectiles);
         var _loc2_:int = int(this.curItemXML.NumProjectiles);
         var _loc3_:uint = gynuha(_loc1_-_loc2_);
         foqub.pushParams(I18nKeys.jadyhe,{numShots:zerefuhen(_loc1_.toString(),_loc3_)});
         return;
      }

      private function rinetisa() : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         this.totezih=XML(this.itemXML.Projectile);
         var _loc1_:int = int(this.totezih.MinDamage);
         var _loc2_:int = int(this.totezih.MaxDamage);
         var _loc3_:Number = (_loc2_+_loc1_)/2;
         this.paquk=XML(this.curItemXML.Projectile);
         var _loc4_:int = int(this.paquk.MinDamage);
         var _loc5_:int = int(this.paquk.MaxDamage);
         var _loc6_:Number = (_loc5_+_loc4_)/2;
         var _loc7_:String = (_loc1_==_loc2_?_loc1_:_loc1_+" - "+_loc2_).toString();
         foqub.pushParams(I18nKeys.DAMAGE,{damage:zerefuhen(_loc7_,gynuha(_loc3_-_loc6_))});
         return;
      }

      private function sel() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(this.itemXML.RateOfFire.length()==0||this.curItemXML.RateOfFire.length()==0)
         {
            return;
         }
         var _loc1_:Number = Number(this.curItemXML.RateOfFire[0]);
         var _loc2_:Number = Number(this.itemXML.RateOfFire[0]);
         var _loc3_:int = int(_loc2_/_loc1_*100);
         var _loc4_:int = _loc3_-100;
         if(_loc4_==0)
         {
            return;
         }
         var _loc5_:uint = gynuha(_loc4_);
         var _loc6_:String = _loc4_.toString();
         if(_loc4_>0)
         {
            _loc6_="+"+_loc6_;
         }
         _loc6_=zerefuhen(_loc6_+"%",_loc5_);
         foqub.pushParams(I18nKeys.wobabazyf,{data:_loc6_});
         return;
      }
   }

}