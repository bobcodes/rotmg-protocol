package rareja
{
[CLASS1359]   import flash.display.Sprite;
   import dob.Beqoq;
   import flash.text.TextField;
   import wacic.Console;
   import gukite.Vifiveho;
   import flash.geom.Rectangle;
   import flash.display.BlendMode;
   import flash.text.TextFormat;
   import flash.text.TextFieldAutoSize;
   import wacic.Mosu;


   public final class Qawysodo extends Sprite implements Beqoq
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qawysodo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gyvo=new TextField();
         super();
         alpha=0.8;
         blendMode=BlendMode.LAYER;
         addChild(this.gyvo);
         this.gyvo.alpha=0.6;
         this.gyvo.defaultTextFormat=new TextFormat("_sans",14,16777215,true);
         this.gyvo.htmlText=kahosimy;
         this.gyvo.selectable=false;
         this.gyvo.multiline=true;
         this.gyvo.wordWrap=true;
         this.gyvo.autoSize=TextFieldAutoSize.LEFT;
         this.gyvo.background=true;
         this.gyvo.border=false;
         this.gyvo.backgroundColor=13056;
         this.rydiz=new Console("",new Mosu());
         addChild(this.rydiz);
         return;
      }

      private static const kahosimy:String = "kabam.lib/console";

      private const qepim:RegExp = new RegExp("\\[0x(.+)\\:(.+)\\]","ig");

      private const winaz:String = "<font color=\'#$1\'>$2</font>";

      private var gyvo:TextField;

      private var rydiz:Console;

      private const piqopagi:Array = [];

      private const siqur:Array = [];

      private const jul:Object = {};

      private var bicusik:Number;

      public function pilepun(param1:Vifiveho) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Vifiveho = this.jul[param1.name]=(this.jul[param1.name])||(this.volarigyv(param1.name));
         _loc2_.data=param1.data.replace(this.qepim,this.winaz);
         this.qifufanav();
         return;
      }

      public function micuvydi(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vifiveho = this.jul[param1];
         if(_loc2_)
         {
            delete this.jul[[param1]];
            this.siqur.splice(this.siqur.indexOf(_loc2_),1);
         }
         return;
      }

      private function volarigyv(param1:String) : Vifiveho {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vifiveho = new Vifiveho(param1);
         this.siqur.push(_loc2_);
         return _loc2_;
      }

      public function log(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = param1.replace(this.qepim,this.winaz);
         this.piqopagi.push(_loc2_);
         this.rydiz.tucejiho(_loc2_);
         return;
      }

      public function clear() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:String = null;
         this.piqopagi.length=0;
         this.siqur.length=0;
         for (_loc1_ in this.jul)
         {
            delete this.jul[[_loc1_]];
         }
         return;
      }

      public function resize(param1:Rectangle) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bicusik=param1.height-Visybe.HEIGHT;
         x=param1.x;
         y=param1.y;
         this.gyvo.width=param1.width;
         this.rydiz.width=param1.width;
         this.fuwef();
         return;
      }

      private function fuwef() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gyvo.y=this.bicusik-this.gyvo.height;
         return;
      }

      private function qifufanav() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gyvo.htmlText=this.siqur.join("\n");
         this.fuwef();
         return;
      }

      public function kym() : String {
         return this.piqopagi.join("\r");
      }
   }
[/CLASS]
}