package zoroc
{
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.util.Zuwomuguk;
   import tulunyno.Hugyqufyq;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.util.Biloqu;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Jutot;


   public class Bezuco extends Object
   {
      public function Bezuco(param1:int=undefined) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.voqy=[new Vugusyqik(),new Vugusyqik(),new Vugusyqik()];
         super();
         this.id=param1;
         this.kuqusoju=<data/>;
         this.hocuvi();
         return;
      }

      private static function rukujop(param1:int) : String {
         return ObjectLibrary.quq(param1).Description;
      }

      private static function ryrutigis(param1:int) : String {
         return ObjectLibrary.quq(param1).DisplayId;
      }

      public static function clone(param1:Bezuco) : Bezuco {
         var _loc2_:Bezuco = new Bezuco(param1.id);
         return _loc2_;
      }

      private var kuqusoju:XML;

      private var id:int;

      private var type:int;

      private var rarity:String;

      private var name:String;

      private var vukyn:int;

      public var voqy:Array;

      private var skinID:int;

      private var skin:Zuwomuguk;

      public const tygyfizop:Hugyqufyq = new Hugyqufyq();

      private function hocuvi() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Vugusyqik = null;
         for each (_loc1_ in this.voqy)
         {
            _loc1_.tygyfizop.add(this.kafywih);
         }
         return;
      }

      public function kib() : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Vugusyqik = null;
         var _loc1_:* = 0;
         for each (_loc2_ in this.voqy)
         {
            if(_loc2_.level==100)
            {
               _loc1_++;
            }
         }
         return _loc1_==this.voqy.length;
      }

      private function kafywih(param1:Vugusyqik) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tygyfizop.dispatch();
         return;
      }

      public function apply(param1:XML) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qugewoc(param1);
         this.mydadoc(param1);
         return;
      }

      private function qugewoc(param1:XML) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return;
      }

      public function mydadoc(param1:XML) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:uint = 0;
         var _loc4_:Vugusyqik = null;
         var _loc5_:* = 0;
         var _loc3_:uint = this.voqy.length;
         _loc2_=0;
         while(_loc2_<_loc3_)
         {
            _loc4_=this.voqy[_loc2_];
            _loc5_=param1.Abilities.Ability[_loc2_].@type;
            _loc4_.name=ryrutigis(_loc5_);
            _loc4_.description=rukujop(_loc5_);
            _loc4_.level=param1.Abilities.Ability[_loc2_].@power;
            _loc4_.points=param1.Abilities.Ability[_loc2_].@points;
            _loc2_++;
         }
         return;
      }

      public function vifuzuqyt() : String {
         return this.kuqusoju.Family;
      }

      public function setID(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.id=param1;
         return;
      }

      public function gutod() : int {
         return this.id;
      }

      public function setType(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.type=param1;
         this.kuqusoju=ObjectLibrary.tem[this.type];
         return;
      }

      public function getType() : int {
         return this.type;
      }

      public function hazivar(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rarity=Cikyzigit.kyj(param1).value;
         this.tupymasev(param1);
         this.tygyfizop.dispatch();
         return;
      }

      private function tupymasev(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.voqy[0].setUnlocked(true);
         this.voqy[1].setUnlocked(param1>=Cikyzigit.mucum.wusibaw);
         this.voqy[2].setUnlocked(param1>=Cikyzigit.tirik.wusibaw);
         return;
      }

      public function morezo() : String {
         return this.rarity;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.name=param1;
         this.tygyfizop.dispatch();
         return;
      }

      public function getName() : String {
         return this.name;
      }

      public function newe(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vukyn=param1;
         this.tygyfizop.dispatch();
         return;
      }

      public function hevozik() : int {
         return this.vukyn;
      }

      public function zepipy(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.skinID=param1;
         this.tygyfizop.dispatch();
         return;
      }

      public function razyhik() : int {
         return this.skinID;
      }

      public function sek() : Bitmap {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.dofe();
         var _loc1_:Biloqu = this.skin.imageFromAngle(0,Zuwomuguk.pazyladar,0);
         var _loc2_:int = this.rarity==Cikyzigit.luwilal.value?40:80;
         var _loc3_:BitmapData = TextureRedrawer.resize(_loc1_.image_,_loc1_.mask_,_loc2_,true,0,0);
         _loc3_=TextureRedrawer.outlineGlow(_loc3_,0,0);
         return new Bitmap(_loc3_);
      }

      public function kiry() : Biloqu {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dofe();
         return this.skin?this.skin.imageFromAngle(0,Zuwomuguk.pazyladar,0):null;
      }

      private function dofe() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:XML = ObjectLibrary.faviqykef(ObjectLibrary.pelek(this.skinID));
         var _loc2_:String = _loc1_.AnimatedTexture.File;
         var _loc3_:int = _loc1_.AnimatedTexture.Index;
         this.skin=Jutot.fyh(_loc2_,_loc3_);
         return;
      }
   }

}