package sylusowuf
{
   import flash.display.Sprite;
   import kimejakim.Tijuj;
   import flash.text.TextField;
   import lutyfopo.Console;
   import rosebo.Ruwatum;
   import flash.geom.Rectangle;
   import flash.display.BlendMode;
   import flash.text.TextFormat;
   import flash.text.TextFieldAutoSize;
   import lutyfopo.Huzujuty;


   public final class Gecafehu extends Sprite implements Tijuj
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Gecafehu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.boz=new TextField();
         super();
         alpha=0.8;
         blendMode=BlendMode.LAYER;
         addChild(this.boz);
         this.boz.alpha=0.6;
         this.boz.defaultTextFormat=new TextFormat("_sans",14,16777215,true);
         this.boz.htmlText=vin;
         this.boz.selectable=false;
         this.boz.multiline=true;
         this.boz.wordWrap=true;
         this.boz.autoSize=TextFieldAutoSize.LEFT;
         this.boz.background=true;
         this.boz.border=false;
         this.boz.backgroundColor=13056;
         this.fesomi=new Console("",new Huzujuty());
         addChild(this.fesomi);
         return;
      }

      private static const vin:String = "kabam.lib/console";

      private const jahuke:RegExp = new RegExp("\\[0x(.+)\\:(.+)\\]","ig");

      private const hozod:String = "<font color=\'#$1\'>$2</font>";

      private var boz:TextField;

      private var fesomi:Console;

      private const qeqyjobis:Array = [];

      private const teti:Array = [];

      private const lypy:Object = {};

      private var pahagopul:Number;

      public function lihyqi(param1:Ruwatum) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Ruwatum = this.lypy[param1.name]=(this.lypy[param1.name])||(this.lidyv(param1.name));
         _loc2_.data=param1.data.replace(this.jahuke,this.hozod);
         this.vapahi();
         return;
      }

      public function vyqane(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Ruwatum = this.lypy[param1];
         if(_loc2_)
         {
            delete this.lypy[[param1]];
            this.teti.splice(this.teti.indexOf(_loc2_),1);
         }
         return;
      }

      private function lidyv(param1:String) : Ruwatum {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Ruwatum = new Ruwatum(param1);
         this.teti.push(_loc2_);
         return _loc2_;
      }

      public function log(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = param1.replace(this.jahuke,this.hozod);
         this.qeqyjobis.push(_loc2_);
         this.fesomi.kerupa(_loc2_);
         return;
      }

      public function clear() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = null;
         this.qeqyjobis.length=0;
         this.teti.length=0;
         for (_loc1_ in this.lypy)
         {
            delete this.lypy[[_loc1_]];
         }
         return;
      }

      public function resize(param1:Rectangle) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pahagopul=param1.height-Fiqemeqat.HEIGHT;
         x=param1.x;
         y=param1.y;
         this.boz.width=param1.width;
         this.fesomi.width=param1.width;
         this.tepozo();
         return;
      }

      private function tepozo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.boz.y=this.pahagopul-this.boz.height;
         return;
      }

      private function vapahi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.boz.htmlText=this.teti.join("\n");
         this.tepozo();
         return;
      }

      public function geheza() : String {
         return this.qeqyjobis.join("\r");
      }
   }

}