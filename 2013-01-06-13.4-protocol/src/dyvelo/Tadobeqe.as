package dyvelo
{
[CLASS158]   import dylaqezo.Vusun;
   import tehakab.Supuvygac;
   import kabam.rotmg.assets.services.Vohemija;
   import __AS3__.vec.Vector;
   import tehakab.Cusifyha;
   import tehakab.Copaqufiv;
   import com.company.util.ConversionUtil;


   public class Tadobeqe extends Object
   {
      public function Tadobeqe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var jojun:Vusun;

      public var qoh:Supuvygac;

      public var factory:Vohemija;

      private var hewategot:int;

      private var legends:Vector.<Tobyd>;

      public function tef(param1:XML) : Vector.<Tobyd> {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hewategot=this.jojun.wegefog();
         this.legends=new Vector.<Tobyd>(0);
         this.fakivu(param1.FameListElem,false);
         this.fakivu(param1.MyFameListElem,true);
         return this.legends;
      }

      private function fakivu(param1:XMLList, param2:Boolean) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:XML = null;
         var _loc4_:Tobyd = null;
         for each (_loc3_ in param1)
         {
            if(!this.vugyfe(_loc3_))
            {
               _loc4_=this.povidybut(_loc3_);
               _loc4_.vimeja=_loc3_.@accountId==this.hewategot;
               _loc4_.noca=param2;
               this.legends.push(_loc4_);
            }
         }
         return;
      }

      private function vugyfe(param1:XML) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Tobyd = null;
         for each (_loc2_ in this.legends)
         {
            if(_loc2_.accountId==param1.@accountId&&_loc2_.charId==param1.@charId)
            {
               return true;
            }
         }
         return false;
      }

      public function povidybut(param1:XML) : Tobyd {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc2_:int = param1.ObjectType;
         var _loc3_:int = param1.Texture;
         var _loc4_:Cusifyha = this.qoh.waqy(_loc2_);
         var _loc5_:Copaqufiv = _loc4_.pikyremo.vobasyg(_loc3_);
         var _loc6_:int = param1.hasOwnProperty("Tex1")?param1.Tex1:0;
         var _loc7_:int = param1.hasOwnProperty("Tex2")?param1.Tex2:0;
         var _loc8_:Tobyd = new Tobyd();
         _loc8_.accountId=param1.@accountId;
         _loc8_.charId=param1.@charId;
         _loc8_.name=param1.Name;
         _loc8_.qocyti=param1.TotalFame;
         _loc8_.character=this.factory.makeIcon(_loc5_.jaqyb,100,_loc6_,_loc7_);
         _loc8_.jusyv=_loc4_.gakiz;
         _loc8_.giguc=ConversionUtil.dapani(param1.Equipment);
         return _loc8_;
      }
   }
[/CLASS]
}