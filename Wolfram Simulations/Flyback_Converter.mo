model Flyback_Converter
  Modelica.Electrical.Analog.Ideal.IdealDiode diode(Vknee = 0.7) annotation(Placement(visible = true, transformation(origin = {50, 22.151}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-30, -55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 220) annotation(Placement(visible = true, transformation(origin = {92.33, 4.636}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 1e-06) annotation(Placement(visible = true, transformation(origin = {68.435, 4.114}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V = 12) annotation(Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch switch(Ron = 0.07) annotation(Placement(visible = true, transformation(origin = {-30, -15}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.BooleanPulse booleanPulse(period = 10e-6, width = 52.47) annotation(Placement(visible = true, transformation(origin = {-10, -25}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 10000000) annotation(Placement(visible = true, transformation(origin = {13.454, -21.802}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Transformer transformer1(L1 = 0.003009, L2 = 0.003000, M = 0.003) annotation(Placement(visible = true, transformation(origin = {-20, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 1.4) annotation(Placement(visible = true, transformation(origin = {-52.531, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  Modelica.Electrical.Analog.Basic.Resistor resistor4(R = 1.7) annotation(Placement(visible = true, transformation(origin = {15, 22.828}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
equation
  connect(diode.n, capacitor1.p) annotation(Line(visible = true, origin = {65.623, 19.472}, points = {{-5.623, 2.679}, {2.812, 2.679}, {2.812, -5.358}}, color = {10, 90, 224}));
  connect(capacitor1.n, resistor1.n) annotation(Line(visible = true, origin = {80.383, -8.255}, points = {{-11.948, 2.369}, {-11.947, -2.63}, {11.947, -2.63}, {11.947, 2.891}}, color = {10, 90, 224}));
  connect(constantVoltage1.n, ground1.p) annotation(Line(visible = true, origin = {-62.5, -43.613}, points = {{-17.5, 33.613}, {-17.5, 6.25}, {32.5, 6.25}, {32.5, -1.387}}, color = {10, 90, 224}));
  connect(switch.n, ground1.p) annotation(Line(visible = true, origin = {-35, -39.954}, points = {{5, 14.954}, {5, 2.5}, {5, 2.5}, {5, -5.046}}, color = {10, 90, 224}));
  connect(booleanPulse.y, switch.control) annotation(Line(visible = true, origin = {-7.875, -20}, points = {{3.375, -5}, {5.875, -5}, {5.875, 5}, {-15.125, 5}}, color = {255, 0, 255}));
  connect(resistor2.n, ground1.p) annotation(Line(visible = true, origin = {-15.773, -37.878}, points = {{29.227, 6.076}, {29.227, 0.8}, {-14.227, 0.8}, {-14.227, -7.122}}, color = {10, 90, 224}));
  connect(switch.p, transformer1.n1) annotation(Line(visible = true, origin = {-30, -1.043}, points = {{0, -3.957}, {0, 16.043}}, color = {10, 90, 224}));
  connect(transformer1.p1, resistor3.p) annotation(Line(visible = true, origin = {-36.266, 25}, points = {{6.266, 0}, {-6.265, 0}}, color = {10, 90, 224}));
  connect(resistor3.n, constantVoltage1.p) annotation(Line(visible = true, origin = {-74.177, 20}, points = {{11.646, 5}, {-5.823, 5}, {-5.823, -10}}, color = {10, 90, 224}));
  connect(resistor2.p, capacitor1.n) annotation(Line(visible = true, origin = {58.445, -11.21}, points = {{-44.991, -0.592}, {-9.991, -0.941}, {9.991, -0.941}, {9.99, 5.324}}, color = {10, 90, 224}));
  connect(resistor4.p, diode.p) annotation(Line(visible = true, origin = {31.25, 22.49}, points = {{-6.25, 0.339}, {-1.25, 0.339}, {-1.25, -0.339}, {8.75, -0.339}}, color = {10, 90, 224}));
  connect(resistor1.p, capacitor1.p) annotation(Line(visible = true, origin = {80.382, 17.006}, points = {{11.947, -2.369}, {11.947, 2.631}, {-11.947, 2.631}, {-11.947, -2.892}}, color = {10, 90, 224}));
  connect(transformer1.p2, resistor2.p) annotation(Line(visible = true, origin = {-5.35, -22.267}, points = {{-4.65, 47.267}, {7.818, 12.267}, {18.804, 10.465}}, color = {10, 90, 224}));
  connect(transformer1.n2, resistor4.n) annotation(Line(visible = true, origin = {-3.75, 18.914}, points = {{-6.25, -3.914}, {-1.25, -3.914}, {-1.25, 3.914}, {8.75, 3.914}}, color = {10, 90, 224}));
  annotation(experiment(StopTime = 0.5, Interval = 1e-6), uses(Modelica(version = "3.2.3")), Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name")}));
end Flyback_Converter;
