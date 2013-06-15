package vyvomevac
{
   import flash.display.Sprite;
   import haj.Sevuvomyn;
   import dyca.Mes;
   import flash.display.DisplayObject;
   import haj.Linocele;
   import ducojoryn.Wakohiga;
   import fanij.Cun;
   import kabam.rotmg.assets.Zewiciciq;


   public class Nycaru extends Sprite
   {
      public function Nycaru() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(this.background);
         addChild(this.hogucun);
         return;
      }

      public var resemuci:Sevuvomyn;

      public var difas:Mes;

      public var qyj:Gerynur;

      public const background:DisplayObject = new Zewiciciq.EvolveBackground();

      public const hogucun:DisplayObject = new Zewiciciq.EvolveBackground();

      public var fiku:Linocele;

      public var fug:Puzakej;

      private var pyhug:Wakohiga;

      public function qaraje(param1:Wakohiga) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.resemuci.dajuhok=6;
         this.pyhug=param1;
         this.kil(param1.fiku);
         this.lehel(param1.qisow);
         addChild(this.qyj);
         this.qyj.gacow.addOnce(this.ratimez);
         this.qyj.play();
         return;
      }

      public function juvar() : Wakohiga {
         return this.pyhug;
      }

      private function lehel(param1:Cun) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fug=this.difas.getInstance(Puzakej);
         this.fug.dovasadib(param1);
         this.fug.mask=this.hogucun;
         this.fug.x=this.background.width/2;
         this.fug.y=this.background.height/2;
         return;
      }

      private function kil(param1:Cun) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fiku=this.resemuci.create(param1,100);
         this.fiku.x=(this.background.width-this.fiku.width)/2;
         this.fiku.y=(this.background.height-this.fiku.height)/2;
         addChild(this.fiku);
         return;
      }

      private function ratimez() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         removeChild(this.fiku);
         addChildAt(this.fug,getChildIndex(this.qyj));
         return;
      }
   }

}