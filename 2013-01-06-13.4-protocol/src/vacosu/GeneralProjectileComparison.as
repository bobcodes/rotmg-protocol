package vacosu
{
[CLASS1808]   import totuhare.AppendingLineBuilder;
   import pigeguwo.Hug;
   import haqakel.Kefyfa;


   public class GeneralProjectileComparison extends Tohu
   {
      public function GeneralProjectileComparison() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var itemXML:XML;

      private var curItemXML:XML;

      private var fufo:XML;

      private var gylon:XML;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.itemXML=param1;
         this.curItemXML=param2;
         lupizavyc=new AppendingLineBuilder();
         if(param1.hasOwnProperty("NumProjectiles"))
         {
            this.selavuny();
            vase[param1.NumProjectiles.toXMLString()]=true;
         }
         if(param1.hasOwnProperty("Projectile"))
         {
            this.jic();
            vase[param1.Projectile.toXMLString()]=true;
         }
         this.rawumopa();
         return;
      }

      private function jic() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.lyliqeq();
         var _loc1_:Number = Number(this.fufo.Speed)*Number(this.fufo.LifetimeMS)/10000;
         var _loc2_:Number = Number(this.gylon.Speed)*Number(this.gylon.LifetimeMS)/10000;
         var _loc3_:String = Hug.tucywi(_loc1_);
         lupizavyc.pushParams(Kefyfa.puc,{range:vajaco(_loc3_,conehody(_loc1_-_loc2_))});
         if(this.fufo.hasOwnProperty("MultiHit"))
         {
            lupizavyc.pushParams(Kefyfa.worigyw,{},Hug.fyzep(fyje),Hug.pijef());
         }
         if(this.fufo.hasOwnProperty("PassesCover"))
         {
            lupizavyc.pushParams(Kefyfa.miryjupuv,{},Hug.fyzep(fyje),Hug.pijef());
         }
         return;
      }

      private function selavuny() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:int = int(this.itemXML.NumProjectiles);
         var _loc2_:int = int(this.curItemXML.NumProjectiles);
         var _loc3_:uint = conehody(_loc1_-_loc2_);
         lupizavyc.pushParams(Kefyfa.waba,{numShots:vajaco(_loc1_.toString(),_loc3_)});
         return;
      }

      private function lyliqeq() : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         this.fufo=XML(this.itemXML.Projectile);
         var _loc1_:int = int(this.fufo.MinDamage);
         var _loc2_:int = int(this.fufo.MaxDamage);
         var _loc3_:Number = (_loc2_+_loc1_)/2;
         this.gylon=XML(this.curItemXML.Projectile);
         var _loc4_:int = int(this.gylon.MinDamage);
         var _loc5_:int = int(this.gylon.MaxDamage);
         var _loc6_:Number = (_loc5_+_loc4_)/2;
         var _loc7_:String = (_loc1_==_loc2_?_loc1_:_loc1_+" - "+_loc2_).toString();
         lupizavyc.pushParams(Kefyfa.DAMAGE,{damage:vajaco(_loc7_,conehody(_loc3_-_loc6_))});
         return;
      }

      private function rawumopa() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
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
         var _loc5_:uint = conehody(_loc4_);
         var _loc6_:String = _loc4_.toString();
         if(_loc4_>0)
         {
            _loc6_="+"+_loc6_;
         }
         _loc6_=vajaco(_loc6_+"%",_loc5_);
         lupizavyc.pushParams(Kefyfa.cer,{data:_loc6_});
         return;
      }
   }
[/CLASS]
}