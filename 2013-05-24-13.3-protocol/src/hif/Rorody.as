package hif
{
   import tulunyno.Hugyqufyq;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;
   import flash.events.Event;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import aaa.rotmg.i18n.I18nKeys;
   import pirus.Vimaz;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.util.Kibaviv;
   import gepa.Fedif;
   import gepa.Mabo;


   public class Rorody extends Poga
   {
      public function Rorody() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fyfydejigi=new ColorMatrixFilter(MoreColorUtil.lyheq);
         super();
         cyjop.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.vyzitawa();
         return;
      }

      public const wupowaj:Hugyqufyq = new Hugyqufyq(int);

      public const jom:Hugyqufyq = new Hugyqufyq();

      public var tusyhunu:Boolean = false;

      private var jugy:Function;

      private var fyfydejigi:ColorMatrixFilter;

      public function basisi(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = null;
         if(this.tusyhunu!=param1)
         {
            this.tusyhunu=param1;
            cyjop.filters=param1?[this.fyfydejigi]:[];
            _loc2_=param1?MoreColorUtil.gejuk:new ColorTransform();
            cyjop.transform.colorTransform=_loc2_;
         }
         return;
      }

      override protected function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.onRemovedFromStage(param1);
         this.gowa();
         return;
      }

      public function setItem(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.itemId!=param1)
         {
            this.gowa();
            this.itemId=param1;
            caw.bitmapData=ObjectLibrary.getRedrawnTextureFromType(param1,80,true);
            bunydomed();
            this.vyzitawa();
            this.wupowaj.dispatch(param1);
         }
         return;
      }

      public function vyzitawa() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         if((itemId)&&!(itemId==-1))
         {
            setTitle(I18nKeys.gav,{});
            _loc1_=ObjectLibrary.faviqykef(ObjectLibrary.pelek(itemId));
            _loc2_=_loc1_.hasOwnProperty("feedPower")?_loc1_.feedPower:"0";
            hak(I18nKeys.kuw,{data:_loc2_});
         }
         else
         {
            setTitle(I18nKeys.rapozuqoj,{});
            hak(I18nKeys.kuw,{data:""});
         }
         return;
      }

      public function likodyk(param1:Function) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jugy=param1;
         return;
      }

      public function qoqiba() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         itemId=Vimaz.sufybefyr;
         caw.bitmapData=null;
         this.gowa();
         this.vyzitawa();
         return;
      }

      private function gowa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jugy=null;
         return;
      }

      private function sytoqi(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         caw.x=-caw.width/2;
         caw.y=-caw.height/2;
         cyjop.x=param1;
         cyjop.y=param2;
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.tusyhunu)
         {
            this.sytoqi(param1.stageX,param1.stageY);
            cyjop.startDrag(true);
            cyjop.addEventListener(MouseEvent.MOUSE_UP,this.tahij);
            removeChild(cyjop);
            stage.addChild(cyjop);
         }
         return;
      }

      private function tahij(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         cyjop.stopDrag();
         cyjop.removeEventListener(MouseEvent.MOUSE_UP,this.tahij);
         stage.removeChild(cyjop);
         addChild(cyjop);
         bunydomed();
         var _loc2_:* = Kibaviv.bikymecup(cyjop.dropTarget,Fedif,Mabo);
         if(!(_loc2_ is Fedif)&&!(_loc2_ is Mabo))
         {
            itemId=Vimaz.sufybefyr;
            caw.bitmapData=null;
            this.gowa();
            this.jom.dispatch();
            this.vyzitawa();
         }
         return;
      }
   }

}