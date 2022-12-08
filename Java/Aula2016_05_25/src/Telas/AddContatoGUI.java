/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Telas;

import Controle.AddContatoControle;
import aula2016_05_25.Contato;
import javax.swing.JOptionPane;


public class AddContatoGUI extends javax.swing.JFrame {
        
        Principal telaAnterior = new Principal();
        int v1, v2, v3;
        float f1, f2, f3;
        String s1, s2, s3, s4, s5, s6;
        
    public AddContatoGUI() {
        initComponents();
    }
    
    public AddContatoGUI(Principal telaAnterior){
        this();
        this.telaAnterior = telaAnterior;
    }
    

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        ProfissaoTextBox = new javax.swing.JTextField();
        TituloLabel = new javax.swing.JLabel();
        TelefoneTextBox = new javax.swing.JTextField();
        NomeLabel = new javax.swing.JLabel();
        EmailTextBox = new javax.swing.JTextField();
        IdadeLabel = new javax.swing.JLabel();
        ContinuarButton = new javax.swing.JToggleButton();
        SexoLabel = new javax.swing.JLabel();
        FamiliaRadio = new javax.swing.JRadioButton();
        jLabel1 = new javax.swing.JLabel();
        AmigosRadio = new javax.swing.JRadioButton();
        TelefoneLabel = new javax.swing.JLabel();
        ProfissionalRadio = new javax.swing.JRadioButton();
        EmailLabel = new javax.swing.JLabel();
        NomeTextBox = new javax.swing.JTextField();
        IdadeTextBox = new javax.swing.JTextField();
        CancelaButton = new javax.swing.JButton();
        SexoComboBox = new javax.swing.JComboBox<>();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
        });

        ProfissaoTextBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ProfissaoTextBoxActionPerformed(evt);
            }
        });

        TituloLabel.setText("Adicionar Contato");

        TelefoneTextBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                TelefoneTextBoxActionPerformed(evt);
            }
        });

        NomeLabel.setText("Nome:");

        EmailTextBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                EmailTextBoxActionPerformed(evt);
            }
        });

        IdadeLabel.setText("Idade:");

        ContinuarButton.setText("Continuar");
        ContinuarButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ContinuarButtonActionPerformed(evt);
            }
        });

        SexoLabel.setText("Sexo:");

        FamiliaRadio.setText("Familia");

        jLabel1.setText("Profissão:");

        AmigosRadio.setText("Amigos");

        TelefoneLabel.setText("Telefone:");

        ProfissionalRadio.setText("Profissional");

        EmailLabel.setText("Email:");

        NomeTextBox.setToolTipText("Digite o Nome do contato");
        NomeTextBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                NomeTextBoxActionPerformed(evt);
            }
        });

        IdadeTextBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                IdadeTextBoxActionPerformed(evt);
            }
        });

        CancelaButton.setText("Cancela");
        CancelaButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CancelaButtonActionPerformed(evt);
            }
        });

        SexoComboBox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Masculino", "Feminino" }));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(112, 112, 112)
                        .addComponent(TituloLabel)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                    .addComponent(EmailLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(EmailTextBox, javax.swing.GroupLayout.DEFAULT_SIZE, 112, Short.MAX_VALUE))
                                .addGroup(layout.createSequentialGroup()
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(NomeLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(TelefoneLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(SexoComboBox, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(NomeTextBox)
                                        .addComponent(TelefoneTextBox, javax.swing.GroupLayout.DEFAULT_SIZE, 112, Short.MAX_VALUE)
                                        .addComponent(IdadeTextBox)
                                        .addComponent(ProfissaoTextBox))))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(FamiliaRadio)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 146, Short.MAX_VALUE)
                                .addComponent(AmigosRadio)
                                .addGap(43, 43, 43)
                                .addComponent(ProfissionalRadio)))))
                .addContainerGap())
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(IdadeLabel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(189, 189, 189))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(ContinuarButton, javax.swing.GroupLayout.PREFERRED_SIZE, 181, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(CancelaButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addContainerGap())
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(SexoLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(TituloLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 38, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(NomeLabel)
                    .addComponent(NomeTextBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(IdadeLabel)
                    .addComponent(IdadeTextBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(8, 8, 8)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(SexoLabel)
                    .addComponent(SexoComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(11, 11, 11)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(ProfissaoTextBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(TelefoneLabel)
                    .addComponent(TelefoneTextBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(EmailLabel)
                    .addComponent(EmailTextBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 14, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(FamiliaRadio)
                    .addComponent(AmigosRadio)
                    .addComponent(ProfissionalRadio))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ContinuarButton)
                    .addComponent(CancelaButton))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void ProfissaoTextBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ProfissaoTextBoxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ProfissaoTextBoxActionPerformed

    private void TelefoneTextBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_TelefoneTextBoxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_TelefoneTextBoxActionPerformed

    private void EmailTextBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_EmailTextBoxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_EmailTextBoxActionPerformed

    private void ContinuarButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ContinuarButtonActionPerformed

        s1 = NomeTextBox.getText();
        try{
            v1 = Integer.parseInt(IdadeTextBox.getText());
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(this,"Possue campos invalidos");
        }
        s2 = (String) SexoComboBox.getSelectedItem();
        s3 = ProfissaoTextBox.getText();
        s4 = TelefoneTextBox.getText();
        s5 = EmailTextBox.getText();

        Contato c = new Contato(s1,v1,s2,s3,s4,s5);
        
        AddContatoControle controle = new AddContatoControle();
        
        if (controle.addContato(c)){
            JOptionPane.showMessageDialog(this,"Cadastro com sucesso");
        }
        else{
            JOptionPane.showMessageDialog(this,"Cadastro falhou");
        }
        
        this.dispose();
        telaAnterior.toFront();
        telaAnterior.setEnabled(true);

    }//GEN-LAST:event_ContinuarButtonActionPerformed

    private void NomeTextBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_NomeTextBoxActionPerformed

    }//GEN-LAST:event_NomeTextBoxActionPerformed

    private void IdadeTextBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_IdadeTextBoxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_IdadeTextBoxActionPerformed

    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
        telaAnterior.setEnabled(true);
    }//GEN-LAST:event_formWindowClosed

    private void CancelaButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CancelaButtonActionPerformed
        this.dispose();
        telaAnterior.setEnabled(true);
        telaAnterior.toFront();
    }//GEN-LAST:event_CancelaButtonActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(AddContatoGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AddContatoGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AddContatoGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AddContatoGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AddContatoGUI().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JRadioButton AmigosRadio;
    private javax.swing.JButton CancelaButton;
    private javax.swing.JToggleButton ContinuarButton;
    private javax.swing.JLabel EmailLabel;
    private javax.swing.JTextField EmailTextBox;
    private javax.swing.JRadioButton FamiliaRadio;
    private javax.swing.JLabel IdadeLabel;
    private javax.swing.JTextField IdadeTextBox;
    private javax.swing.JLabel NomeLabel;
    private javax.swing.JTextField NomeTextBox;
    private javax.swing.JTextField ProfissaoTextBox;
    private javax.swing.JRadioButton ProfissionalRadio;
    private javax.swing.JComboBox<String> SexoComboBox;
    private javax.swing.JLabel SexoLabel;
    private javax.swing.JLabel TelefoneLabel;
    private javax.swing.JTextField TelefoneTextBox;
    private javax.swing.JLabel TituloLabel;
    private javax.swing.JLabel jLabel1;
    // End of variables declaration//GEN-END:variables
}
