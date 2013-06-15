package fanij
{
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.util.Jiqefatok;
   import mukyrosu.Qanyduk;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.util.Kebinuhi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Hekisona;


   public class Cun extends Object
   {
      public function Cun(param1:int=undefined) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.supufo=[new Kyruha(),new Kyruha(),new Kyruha()];
         super();
         this.id=param1;
         this.vivuqes=<data/>;
         this.qylabyzoz();
         return;
      }

      private static function hive(param1:int) : String {
         return ObjectLibrary.zas(param1).Description;
      }

      private static function suci(param1:int) : String {
         return ObjectLibrary.zas(param1).DisplayId;
      }

      public static function clone(param1:Cun) : Cun {
         var _loc2_:Cun = new Cun(param1.id);
         return _loc2_;
      }

      private var vivuqes:XML;

      private var id:int;

      private var type:int;

      private var rarity:String;

      private var name:String;

      private var mawiqihe:int;

      public var supufo:Array;

      private var skinID:int;

      private var skin:Jiqefatok;

      public const nuzum:Qanyduk = new Qanyduk();

      private function qylabyzoz() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Kyruha = null;
         for each (_loc1_ in this.supufo)
         {
            _loc1_.nuzum.add(this.jecafo);
         }
         return;
      }

      public function vejam() : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Kyruha = null;
         var _loc1_:* = 0;
         for each (_loc2_ in this.supufo)
         {
            if(_loc2_.level==100)
            {
               _loc1_++;
            }
         }
         return _loc1_==this.supufo.length;
      }

      private function jecafo(param1:Kyruha) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nuzum.dispatch();
         return;
      }

      public function apply(param1:XML) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vosaf(param1);
         this.nene(param1);
         return;
      }

      private function vosaf(param1:XML) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return;
      }

      public function nene(param1:XML) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:uint = 0;
         var _loc4_:Kyruha = null;
         var _loc5_:* = 0;
         var _loc3_:uint = this.supufo.length;
         _loc2_=0;
         while(_loc2_<_loc3_)
         {
            _loc4_=this.supufo[_loc2_];
            _loc5_=param1.Abilities.Ability[_loc2_].@type;
            _loc4_.name=suci(_loc5_);
            _loc4_.description=hive(_loc5_);
            _loc4_.level=param1.Abilities.Ability[_loc2_].@power;
            _loc4_.points=param1.Abilities.Ability[_loc2_].@points;
            _loc2_++;
         }
         return;
      }

      public function piju() : String {
         return this.vivuqes.Family;
      }

      public function setID(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.id=param1;
         return;
      }

      public function lepuve() : int {
         return this.id;
      }

      public function setType(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.type=param1;
         this.vivuqes=ObjectLibrary.ziq[this.type];
         return;
      }

      public function getType() : int {
         return this.type;
      }

      public function nesepi(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rarity=Wymove.naryq(param1).value;
         this.tywis(param1);
         this.nuzum.dispatch();
         return;
      }

      private function tywis(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.supufo[0].setUnlocked(true);
         this.supufo[1].setUnlocked(param1>=Wymove.zohile.qyb);
         this.supufo[2].setUnlocked(param1>=Wymove.vikajy.qyb);
         return;
      }

      public function laj() : String {
         return this.rarity;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name=param1;
         this.nuzum.dispatch();
         return;
      }

      public function getName() : String {
         return this.name;
      }

      public function noqipo(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mawiqihe=param1;
         this.nuzum.dispatch();
         return;
      }

      public function voz() : int {
         return this.mawiqihe;
      }

      public function qymido(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.skinID=param1;
         this.nuzum.dispatch();
         return;
      }

      public function niw() : int {
         return this.skinID;
      }

      public function vobydozid() : Bitmap {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.tys();
         var _loc1_:Kebinuhi = this.skin.imageFromAngle(0,Jiqefatok.radev,0);
         var _loc2_:int = this.rarity==Wymove.hov.value?40:80;
         var _loc3_:BitmapData = TextureRedrawer.resize(_loc1_.image_,_loc1_.mask_,_loc2_,true,0,0);
         _loc3_=TextureRedrawer.outlineGlow(_loc3_,0,0);
         return new Bitmap(_loc3_);
      }

      public function juqodutyp() : Kebinuhi {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tys();
         return this.skin?this.skin.imageFromAngle(0,Jiqefatok.radev,0):null;
      }

      private function tys() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:XML = ObjectLibrary.jesycegoc(ObjectLibrary.ryqovol(this.skinID));
         var _loc2_:String = _loc1_.AnimatedTexture.File;
         var _loc3_:int = _loc1_.AnimatedTexture.Index;
         this.skin=Hekisona.woseku(_loc2_,_loc3_);
         return;
      }
   }

}