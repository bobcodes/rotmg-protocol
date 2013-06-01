package com.company.assembleegameclient.screens.charrects
{
   import povopito.MyPlayerToolTip;
   import tulunyno.Hugyqufyq;
   import com.company.assembleegameclient.appengine.Lycuhej;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import fulaw.Jimi;
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.assembleegameclient.util.Wagoq;
   import com.company.rotmg.graphics.DeleteXGraphic;
   import zybybobil.Desipuf;


   public class CurrentCharacterRect extends CharacterRect
   {
      public function CurrentCharacterRect(param1:String, param2:Jimi, param3:SavedCharacter, param4:Lycuhej) {
         this.myPlayerToolTipFactory=new MyPlayerToolTipFactory();
         super();
         this.charName=param1;
         this.charType=param2;
         this.char=param3;
         this.charStats=param4;
         var _loc5_:String = param2.name;
         var _loc6_:int = param3.jevuzuwol.Level;
         super.className=new Sire().setParams(I18nKeys.zelasyq,
            {
               className:_loc5_,
               level:_loc6_
            }
         );
         super.color=6052956;
         super.overColor=8355711;
         super.init();
         this.makeTagline();
         this.makeDeleteButton();
         this.addEventListeners();
         return;
      }

      private static var toolTip_:MyPlayerToolTip = null;

      public const selected:Hugyqufyq = new Hugyqufyq();

      public const deleteCharacter:Hugyqufyq = new Hugyqufyq();

      public const showToolTip:Hugyqufyq = new Hugyqufyq(Sprite);

      public const hideTooltip:Hugyqufyq = new Hugyqufyq();

      public var charName:String;

      public var charStats:Lycuhej;

      public var char:SavedCharacter;

      public var myPlayerToolTipFactory:MyPlayerToolTipFactory;

      private var charType:Jimi;

      private var deleteButton:Sprite;

      private var icon:DisplayObject;

      private function addEventListeners() : void {
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         selectContainer.addEventListener(MouseEvent.CLICK,this.onSelect);
         this.deleteButton.addEventListener(MouseEvent.CLICK,this.onDelete);
         return;
      }

      private function onSelect(param1:MouseEvent) : void {
         this.selected.dispatch(this.char);
         return;
      }

      private function onDelete(param1:MouseEvent) : void {
         this.deleteCharacter.dispatch(this.char);
         return;
      }

      public function setIcon(param1:DisplayObject) : void {
         this.icon=param1;
         this.icon.x=CharacterRectConstants.ICON_POS_X;
         this.icon.y=CharacterRectConstants.ICON_POS_Y;
         return;
      }

      private function makeTagline() : void {
         if(this.getNextStarFame()>0)
         {
            super.makeTaglineIcon();
            super.makeTaglineText(new Sire().setParams(I18nKeys.nykodi,
               {
                  fame:this.char.fame(),
                  nextStarFame:this.getNextStarFame()
               }
            ));
            taglineText.x=taglineText.x+taglineIcon.width;
         }
         return;
      }

      private function getNextStarFame() : int {
         return Wagoq.nextStarFame(this.charStats==null?0:this.charStats.gat(),this.char.fame());
      }

      private function makeDeleteButton() : void {
         this.deleteButton=new DeleteXGraphic();
         this.deleteButton.addEventListener(MouseEvent.MOUSE_DOWN,this.onDeleteDown);
         this.deleteButton.x=WIDTH-40;
         this.deleteButton.y=(HEIGHT-this.deleteButton.height)*0.5;
         addChild(this.deleteButton);
         return;
      }

      override protected function onMouseOver(param1:MouseEvent) : void {
         super.onMouseOver(param1);
         this.removeToolTip();
         toolTip_=this.myPlayerToolTipFactory.create(this.charName,this.char.jevuzuwol,this.charStats);
         toolTip_.meje();
         this.showToolTip.dispatch(toolTip_);
         return;
      }

      override protected function onRollOut(param1:MouseEvent) : void {
         super.onRollOut(param1);
         this.removeToolTip();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         this.removeToolTip();
         return;
      }

      private function removeToolTip() : void {
         this.hideTooltip.dispatch();
         return;
      }

      private function onDeleteDown(param1:MouseEvent) : void {
         param1.stopImmediatePropagation();
         dispatchEvent(new Desipuf(this.char));
         return;
      }
   }

}