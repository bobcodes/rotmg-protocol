package tisidon
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import hivysif.Guzowoja;
   import nagyc.Jyt;
   import flash.display.Loader;
   import mukyrosu.Qanyduk;
   import dyca.Mes;
   import flash.events.MouseEvent;
   import hivysif.Qizuj;
   import flash.text.TextFieldAutoSize;
   import jediwip.Vofezuzy;
   import flash.filters.DropShadowFilter;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import sijizoh.Duq;


   public class Cowanynow extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cowanynow(param1:Number, param2:Number) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.letojeg=new Qanyduk(Jyt);
         super();
         this.difas=Duq.pamazo();
         this.setSize(param1,param2);
         this.zehanomub();
         this.baw();
         this.hafuwyqe();
         return;
      }

      static var gerisini:Class = Mifefezuj;

      static var cesid:Class = Nav;

      private static const rodibiz:uint = 30;

      private static const LARGE:String = "LARGE";

      private static const SMALL:String = "SMALL";

      private var rotyzi:Sprite;

      private var haronyge:Shape;

      private var nufy:Shape;

      private var vatapyle:Guzowoja;

      private var size:String;

      private var w:Number;

      private var h:Number;

      private var zifunigy:Jyt;

      private var _loader:Loader;

      private var qoqejivy:uint = 18;

      public var letojeg:Qanyduk;

      private var difas:Mes;

      private function setSize(param1:Number, param2:Number) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.w=param1;
         this.h=param2;
         if(param1==306&&param2==194)
         {
            this.size=LARGE;
         }
         else
         {
            if(param1==151&&param2==189)
            {
               this.size=SMALL;
            }
         }
         return;
      }

      public function init(param1:Jyt) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zifunigy=param1;
         this.codymopah();
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         buttonMode=true;
         return;
      }

      private function nyzyvuh() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addChild(this.haronyge=new Shape());
         addChild(this.nufy=new Shape());
         return;
      }

      private function zehanomub() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rotyzi=new Sprite();
         addChild(this.rotyzi);
         return;
      }

      private function baw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.haronyge=new Shape();
         this.haronyge.graphics.beginFill(16711935);
         this.haronyge.graphics.drawRect(0,0,this.w,this.h);
         this.rotyzi.mask=this.haronyge;
         addChild(this.haronyge);
         return;
      }

      private function hafuwyqe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nufy=new Shape();
         this.nufy.graphics.beginFill(0,0.8);
         this.nufy.graphics.drawRect(0,this.h-rodibiz,this.w,rodibiz);
         addChild(this.nufy);
         return;
      }

      private function codymopah() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vatapyle=this.difas.getInstance(Qizuj).setSize(this.qoqejivy).setColor(16777215);
         addChild(this.vatapyle);
         this.vatapyle.setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Guzowoja.MIDDLE);
         this.vatapyle.setStringBuilder(new Vofezuzy(this.zifunigy.fadetuqe));
         this.rar();
         this.vatapyle.x=this.w/2;
         this.vatapyle.y=this.h-25/2;
         this.vatapyle.filters=[new DropShadowFilter(0,0,0)];
         return;
      }

      private function rar() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.vatapyle.width>this.w-10)
         {
            this.qoqejivy=this.qoqejivy-2;
            this.vatapyle.setSize(this.qoqejivy).setColor(16777215);
            this.rar();
         }
         return;
      }

      public function load() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this._loader=new Loader();
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this._loader.load(new URLRequest(this.zifunigy.wipud));
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rotyzi.addChild(this._loader);
         return;
      }

      private function onIOError(param1:IOErrorEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case LARGE:
               this.rotyzi.addChild(new gerisini());
               break;
            case SMALL:
               this.rotyzi.addChild(new cesid());
               break;
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.letojeg.dispatch(this.zifunigy);
         return;
      }
   }

}