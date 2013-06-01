package com.company.assembleegameclient.screens.charrects
{
[CLASS488]   import pigeguwo.MyPlayerToolTip;
   import tinava.Dab;
   import com.company.assembleegameclient.appengine.Wus;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import tehakab.Cusifyha;
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.util.Gugi;
   import com.company.rotmg.graphics.DeleteXGraphic;
   import lasyvir.Pasaqupop;


   public class CurrentCharacterRect extends CharacterRect
   {
      public function CurrentCharacterRect(param1:String, param2:Cusifyha, param3:SavedCharacter, param4:Wus) {
         this.myPlayerToolTipFactory=new MyPlayerToolTipFactory();
         super();
         this.charName=param1;
         this.charType=param2;
         this.char=param3;
         this.charStats=param4;
         var _loc5_:String = param2.name;
         var _loc6_:int = param3.puju.Level;
         super.className=new Zufi().setParams(Kefyfa.rytahiwe,
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

      public const selected:Dab = new Dab();

      public const deleteCharacter:Dab = new Dab();

      public const showToolTip:Dab = new Dab(Sprite);

      public const hideTooltip:Dab = new Dab();

      public var charName:String;

      public var charStats:Wus;

      public var char:SavedCharacter;

      public var myPlayerToolTipFactory:MyPlayerToolTipFactory;

      private var charType:Cusifyha;

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
            super.makeTaglineText(new Zufi().setParams(Kefyfa.gevin,
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
         return Gugi.nextStarFame(this.charStats==null?0:this.charStats.bukiga(),this.char.fame());
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
         toolTip_=this.myPlayerToolTipFactory.create(this.charName,this.char.puju,this.charStats);
         toolTip_.jypebozu();
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
         dispatchEvent(new Pasaqupop(this.char));
         return;
      }
   }
[/CLASS]
}