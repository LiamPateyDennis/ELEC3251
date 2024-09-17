model BuckConverter_A1
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V = 12) annotation(Placement(visible = true, transformation(origin = {-100, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch annotation(Placement(visible = true, transformation(origin = {-70, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealDiode diode annotation(Placement(visible = true, transformation(origin = {-40, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 1e-3) annotation(Placement(visible = true, transformation(origin = {-10, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 1e-6) annotation(Placement(visible = true, transformation(origin = {20, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 5.1) annotation(Placement(visible = true, transformation(origin = {60, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-100, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanPulse booleanPulse1(width = 41.67, period = 1e-5) annotation(Placement(visible = true, transformation(origin = {-110, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(constantVoltage1.p, switch.p) annotation(Line(visible = true, origin = {-93.333, 13.333}, points = {{-6.667, -13.333}, {-6.667, 6.667}, {13.333, 6.667}}, color = {10, 90, 224}));
  connect(switch.n, diode.n) annotation(Line(visible = true, origin = {-46.667, 13.333}, points = {{-13.333, 6.667}, {6.667, 6.667}, {6.667, -13.333}}, color = {10, 90, 224}));
  connect(inductor1.p, diode.n) annotation(Line(visible = true, origin = {-33.333, 13.333}, points = {{13.333, 6.667}, {-6.667, 6.667}, {-6.667, -13.333}}, color = {10, 90, 224}));
  connect(inductor1.n, capacitor1.p) annotation(Line(visible = true, origin = {13.333, 13.333}, points = {{-13.333, 6.667}, {6.667, 6.667}, {6.667, -13.333}}, color = {10, 90, 224}));
  connect(resistor1.p, inductor1.n) annotation(Line(visible = true, origin = {40, 13.333}, points = {{20, -13.333}, {20, 6.667}, {-40, 6.667}}, color = {10, 90, 224}));
  connect(ground1.p, constantVoltage1.n) annotation(Line(visible = true, origin = {-100, -30}, points = {{0, -10}, {-0, 10}}, color = {10, 90, 224}));
  connect(ground1.p, diode.p) annotation(Line(visible = true, origin = {-70, -37.5}, points = {{-30, -2.5}, {-30, -2.5}, {30, -2.5}, {30, 17.5}}, color = {10, 90, 224}));
  connect(capacitor1.n, diode.p) annotation(Line(visible = true, origin = {-10, -37.5}, points = {{30, 17.5}, {30, -2.5}, {-30, -2.5}, {-30, 17.5}}, color = {10, 90, 224}));
  connect(resistor1.n, capacitor1.n) annotation(Line(visible = true, origin = {40, -38.001}, points = {{20, 18.001}, {20, -1.999}, {-20, -1.999}, {-20, 18.001}}, color = {10, 90, 224}));
  connect(booleanPulse1.y, switch.control) annotation(Line(visible = true, origin = {-79.667, 49}, points = {{-19.333, 11}, {9.667, 11}, {9.667, -22}}, color = {255, 0, 255}));
  annotation(experiment(StopTime = 2, __Wolfram_NumberOfIntervals = 2000), uses(Modelica(version = "3.2.3")), Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name")}));
end BuckConverter_A1;
