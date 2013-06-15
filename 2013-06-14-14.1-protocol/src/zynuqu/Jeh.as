package zynuqu
{
   import lemugo.Wokycuku;
   import poho.Kyhy;
   import kabam.rotmg.assets.services.Bytedif;
   import __AS3__.vec.Vector;
   import poho.Dywygave;
   import poho.Pom;
   import com.company.util.ConversionUtil;


   public class Jeh extends Object
   {
      public function Jeh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var kejisacok:Wokycuku;

      public var jopyza:Kyhy;

      public var factory:Bytedif;

      private var wosaqyqu:int;

      private var legends:Vector.<Topunu>;

      public function quzonytor(param1:XML) : Vector.<Topunu> {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wosaqyqu=this.kejisacok.sosimu();
         this.legends=new Vector.<Topunu>(0);
         this.sujyryt(param1.FameListElem,false);
         this.sujyryt(param1.MyFameListElem,true);
         return this.legends;
      }

      private function sujyryt(param1:XMLList, param2:Boolean) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:XML = null;
         var _loc4_:Topunu = null;
         for each (_loc3_ in param1)
         {
            if(!this.maciwyku(_loc3_))
            {
               _loc4_=this.niwumi(_loc3_);
               _loc4_.hosifurug=_loc3_.@accountId==this.wosaqyqu;
               _loc4_.zeto=param2;
               this.legends.push(_loc4_);
            }
         }
         return;
      }

      private function maciwyku(param1:XML) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Topunu = null;
         for each (_loc2_ in this.legends)
         {
            if(_loc2_.accountId==param1.@accountId&&_loc2_.charId==param1.@charId)
            {
               return true;
            }
         }
         return false;
      }

      public function niwumi(param1:XML) : Topunu {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc2_:int = param1.ObjectType;
         var _loc3_:int = param1.Texture;
         var _loc4_:Dywygave = this.jopyza.gug(_loc2_);
         var _loc5_:Pom = _loc4_.sybiwu.vobydozid(_loc3_);
         var _loc6_:int = param1.hasOwnProperty("Tex1")?param1.Tex1:0;
         var _loc7_:int = param1.hasOwnProperty("Tex2")?param1.Tex2:0;
         var _loc8_:Topunu = new Topunu();
         _loc8_.accountId=param1.@accountId;
         _loc8_.charId=param1.@charId;
         _loc8_.name=param1.Name;
         _loc8_.tokanemi=param1.TotalFame;
         _loc8_.character=this.factory.makeIcon(_loc5_.fegotu,100,_loc6_,_loc7_);
         _loc8_.duhi=_loc4_.jek;
         _loc8_.monyn=ConversionUtil.zyhelokub(param1.Equipment);
         return _loc8_;
      }
   }

}