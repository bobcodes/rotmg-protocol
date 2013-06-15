package kyjunys
{
   import mukyrosu.Qanyduk;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;
   import flash.events.Event;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import komi.Vibemod;
   import pilage.Tope;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.util.Lylyto;
   import vuwit.Domuh;
   import vuwit.Rudive;


   public class Qajul extends Cave
   {
      public function Qajul() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cezugac=new ColorMatrixFilter(MoreColorUtil.fuguwo);
         super();
         soqugarol.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.mola();
         return;
      }

      public const dukujokon:Qanyduk = new Qanyduk(int);

      public const gure:Qanyduk = new Qanyduk();

      public var poqiq:Boolean = false;

      private var dek:Function;

      private var cezugac:ColorMatrixFilter;

      public function jaw(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = null;
         if(this.poqiq!=param1)
         {
            this.poqiq=param1;
            soqugarol.filters=param1?[this.cezugac]:[];
            _loc2_=param1?MoreColorUtil.golanehud:new ColorTransform();
            soqugarol.transform.colorTransform=_loc2_;
         }
         return;
      }

      override protected function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.onRemovedFromStage(param1);
         this.fulumicad();
         return;
      }

      public function setItem(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.itemId!=param1)
         {
            this.fulumicad();
            this.itemId=param1;
            rijitafut.bitmapData=ObjectLibrary.getRedrawnTextureFromType(param1,80,true);
            ninuzi();
            this.mola();
            this.dukujokon.dispatch(param1);
         }
         return;
      }

      public function mola() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         if((itemId)&&!(itemId==-1))
         {
            setTitle(Vibemod.nihifokyt,{});
            _loc1_=ObjectLibrary.jesycegoc(ObjectLibrary.ryqovol(itemId));
            _loc2_=_loc1_.hasOwnProperty("feedPower")?_loc1_.feedPower:"0";
            socec(Vibemod.benuwi,{data:_loc2_});
         }
         else
         {
            setTitle(Vibemod.rivina,{});
            socec(Vibemod.benuwi,{data:""});
         }
         return;
      }

      public function qoleg(param1:Function) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dek=param1;
         return;
      }

      public function syhikojik() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         itemId=Tope.puheqah;
         rijitafut.bitmapData=null;
         this.fulumicad();
         this.mola();
         return;
      }

      private function fulumicad() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dek=null;
         return;
      }

      private function fecopesi(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         rijitafut.x=-rijitafut.width/2;
         rijitafut.y=-rijitafut.height/2;
         soqugarol.x=param1;
         soqugarol.y=param2;
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.poqiq)
         {
            this.fecopesi(param1.stageX,param1.stageY);
            soqugarol.startDrag(true);
            soqugarol.addEventListener(MouseEvent.MOUSE_UP,this.rekyb);
            removeChild(soqugarol);
            stage.addChild(soqugarol);
         }
         return;
      }

      private function rekyb(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         soqugarol.stopDrag();
         soqugarol.removeEventListener(MouseEvent.MOUSE_UP,this.rekyb);
         stage.removeChild(soqugarol);
         addChild(soqugarol);
         ninuzi();
         var _loc2_:* = Lylyto.porocif(soqugarol.dropTarget,Domuh,Rudive);
         if(!(_loc2_ is Domuh)&&!(_loc2_ is Rudive))
         {
            itemId=Tope.puheqah;
            rijitafut.bitmapData=null;
            this.fulumicad();
            this.gure.dispatch();
            this.mola();
         }
         return;
      }
   }

}