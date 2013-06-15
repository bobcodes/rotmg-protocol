package zekeqa
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import tyk.Bujyqap;
   import wenono.Nuri;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import tyk.Tidys;
   import flash.display.DisplayObject;
   import pokaceseb.Rebulocy;
   import typoc.Layout;


   public class Siz extends Sprite
   {
      public function Siz(param1:Vector.<String>) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.roto=param1;
         this.ryfoc.complete.add(this.tugoh);
         this.luz();
         this.tugoh();
         this.wacym();
         return;
      }

      private var roto:Vector.<String>;

      private var bebavige:Vector.<Mykiq>;

      private var group:Bujyqap;

      private const ryfoc:Nuri = new Nuri();

      public function setSelected(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.group.setSelected(param1);
         return;
      }

      public function gype() : String {
         return this.group.gype().getValue();
      }

      private function luz() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = this.roto.length;
         this.bebavige=new Vector.<Mykiq>(_loc1_,true);
         var _loc2_:* = 0;
         while(_loc2_<_loc1_)
         {
            this.bebavige[_loc2_]=this.hacovys(this.roto[_loc2_]);
            _loc2_++;
         }
         return;
      }

      private function hacovys(param1:String) : Mykiq {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Mykiq = new Mykiq(param1);
         _loc2_.addEventListener(MouseEvent.CLICK,this.tyhecete);
         this.ryfoc.push(_loc2_.rek);
         addChild(_loc2_);
         return _loc2_;
      }

      private function tyhecete(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Tidys = param1.currentTarget as Tidys;
         this.group.setSelected(_loc2_.getValue());
         return;
      }

      private function tugoh() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Vector.<DisplayObject> = this.kocehozeg();
         var _loc2_:Layout = new Rebulocy();
         _loc2_.wysycoviw(20);
         _loc2_.layout(_loc1_);
         return;
      }

      private function kocehozeg() : Vector.<DisplayObject> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:int = this.bebavige.length;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.bebavige[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }

      private function wacym() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vector.<Tidys> = this.lovyv();
         this.group=new Bujyqap(_loc1_);
         this.group.setSelected(this.bebavige[0].getValue());
         return;
      }

      private function lovyv() : Vector.<Tidys> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:int = this.bebavige.length;
         var _loc2_:Vector.<Tidys> = new Vector.<Tidys>(0);
         var _loc3_:* = 0;
         while(_loc3_<_loc1_)
         {
            _loc2_[_loc3_]=this.bebavige[_loc3_];
            _loc3_++;
         }
         return _loc2_;
      }
   }

}